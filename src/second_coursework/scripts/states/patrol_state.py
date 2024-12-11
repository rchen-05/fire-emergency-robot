#!/usr/bin/env python3
import rospy
from smach import State, StateMachine
from geometry_msgs.msg import Pose
import math
from states.navigation_state import NavigationState
from states.detection_state import DetectionState
from tf.transformations import quaternion_from_euler

class PatrolState(State):
    def __init__(self):
        # Update input_keys to include all required keys
        State.__init__(self, 
                      outcomes=['succeeded', 'aborted', 'preempted'],
                      input_keys=['start_time', 'duration', 'people_poses', 'cat_poses', 'dog_poses'],
                      output_keys=['people_poses', 'cat_poses', 'dog_poses', 'new_people', 
                                 'new_cats', 'new_dogs', 'current_target'])
        
        # Adjusted points to be more centered in rooms and away from walls
        self.points = [
            # Room A - keep more distance from walls
            [2.0, 8.0],    # Center
            [1.5, 9.0],    # Top left
            [2.5, 9.0],    # Top right 
            [1.5, 7.0],    # Bottom left
            [2.5, 7.0],    # Bottom right
            
            # Room B
            [6.0, 8.0],    # Center
            [5.5, 9.0],    # Top left
            [6.5, 9.0],    # Top right
            [5.5, 7.0],    # Bottom left
            [6.5, 7.0],    # Bottom right
            
            # Room C
            [10.0, 8.0],   # Center
            [9.5, 9.0],    # Top left
            [10.5, 9.0],   # Top right
            [9.5, 7.0],    # Bottom left
            [10.5, 7.0],   # Bottom right
            
            # Room D
            [2.0, 3.3],    # Center
            [1.5, 4.3],    # Top left
            [2.5, 4.3],    # Top right
            [1.5, 2.3],    # Bottom left
            [2.5, 2.3],    # Bottom right
            
            # Room E
            [6.0, 3.6],    # Center
            [5.5, 4.6],    # Top left
            [6.5, 4.6],    # Top right
            [5.5, 2.6],    # Bottom left
            [6.5, 2.6],    # Bottom right
            
            # Room F
            [10.6, 2.6],   # Center
            [10.1, 3.6],   # Top left
            [11.1, 3.6],   # Top right
            [10.1, 1.6],   # Bottom left
            [11.1, 1.6],   # Bottom right
        ]
        self.end_point = [6.0, 3.6]
        
        # Update inner state machine to match outer state's keys
        self.sm = StateMachine(
            outcomes=['succeeded', 'aborted', 'preempted'],
            input_keys=['start_time', 'duration', 'people_poses', 'cat_poses', 'dog_poses'],
            output_keys=['detections', 'people_poses', 'cat_poses', 'dog_poses', 
                        'new_people', 'new_cats', 'new_dogs', 'current_target']
        )
        
        # Initialize all userdata fields
        self.sm.userdata.people_poses = []
        self.sm.userdata.cat_poses = []
        self.sm.userdata.dog_poses = []
        self.sm.userdata.new_people = 0
        self.sm.userdata.new_cats = 0
        self.sm.userdata.new_dogs = 0
        self.sm.userdata.current_target = Pose()
        self.sm.userdata.detections = {'people': [], 'cats': [], 'dogs': []}
        
        with self.sm:
            StateMachine.add('NAVIGATE', NavigationState(),
                           transitions={'reached':'DETECT',
                                      'failed':'aborted',
                                      'preempted':'preempted'},
                           remapping={'target_pose':'current_target',
                                      'people_poses':'people_poses',
                                      'cat_poses':'cat_poses',
                                      'dog_poses':'dog_poses'})
                           
            StateMachine.add('DETECT', DetectionState(),
                           transitions={'detected':'succeeded',
                                      'none':'succeeded',
                                      'preempted':'preempted'},
                           remapping={'current_pose':'current_target',
                                      'detections':'detections',
                                      'people_poses':'people_poses',
                                      'cat_poses':'cat_poses',
                                      'dog_poses':'dog_poses'})

    def create_pose(self, point):
        pose = Pose()
        pose.position.x = point[0]
        pose.position.y = point[1]
        
        # Fix orientation calculation - face center of room
        # Calculate angle towards room center instead of origin
        room_centers = {
            'A': [2.0, 8.0],
            'B': [6.0, 8.0],
            'C': [10.0, 8.0],
            'D': [2.0, 3.3],
            'E': [6.0, 3.6],
            'F': [10.6, 2.6]
        }
        
        # Find closest room center
        min_dist = float('inf')
        closest_center = [6.0, 5.0]  # Default to map center
        for center in room_centers.values():
            dist = ((point[0] - center[0])**2 + (point[1] - center[1])**2)**0.5
            if dist < min_dist:
                min_dist = dist
                closest_center = center
        
        # Calculate angle to face room center
        dx = closest_center[0] - point[0]
        dy = closest_center[1] - point[1]
        theta = math.atan2(dy, dx)
        
        q = quaternion_from_euler(0, 0, theta)
        pose.orientation.x = q[0]
        pose.orientation.y = q[1]
        pose.orientation.z = q[2]
        pose.orientation.w = q[3]
        return pose

    def execute(self, userdata):
        rospy.loginfo("Patrolling")
        try:
            userdata.people_poses = []
            userdata.cat_poses = []
            userdata.dog_poses = []
            
            # Visit each point
            for point in self.points:
                # Check if duration has expired
                if (rospy.Time.now() - userdata.start_time) >= userdata.duration:
                    rospy.loginfo("Patrol duration expired, returning to room E")
                    return 'succeeded'
                
                if rospy.is_shutdown() or self.preempt_requested():
                    return 'preempted'
                
                self.sm.userdata.current_target = self.create_pose(point)
                outcome = self.sm.execute()
                
                if outcome != 'succeeded':
                    return outcome
                    
                # Update detections
                rospy.loginfo("1")
                if hasattr(self.sm.userdata, 'detections'):
                    rospy.loginfo("2")
                    userdata.people_poses.extend(self.sm.userdata.detections['people'])
                    userdata.cat_poses.extend(self.sm.userdata.detections['cats'])
                    userdata.dog_poses.extend(self.sm.userdata.detections['dogs'])
                
                rospy.sleep(1.0)
                rospy.loginfo("3")
            
            # Return to start
            self.sm.userdata.current_target = self.create_pose(self.end_point)
            return 'succeeded' if self.sm.execute() != 'aborted' else 'aborted'
            
        except Exception as e:
            rospy.logerr(f"Error in patrol: {e}")
            return 'aborted'