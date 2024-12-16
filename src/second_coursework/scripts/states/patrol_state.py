#!/usr/bin/env python3
import rospy
from smach import State, StateMachine
from geometry_msgs.msg import Pose
import math
from std_msgs.msg import String
from states.navigation_state import NavigationState
from states.detection_state import DetectionState
from tf.transformations import quaternion_from_euler

class PatrolState(State):
    def __init__(self, marker_pub, action_server):
        State.__init__(self, 
                      outcomes=['succeeded', 'aborted', 'preempted'],
                      input_keys=['start_time', 'duration'],
                      output_keys=['latest_detection_pose', 'person_poses', 
                                 'cat_poses', 'dog_poses'])  
                                 

        self.points = [
            # Room A 
            [2.0, 8.0],    # Center
            [0.7, 9.9],    # Top left
            [2.9, 9.9],    # Top right 
            [0.7, 6.7],    # Bottom left
            [2.9, 6.7],    # Bottom right
            
            # Room B
            [6.0, 8.0],    # Center
            [4.5, 9.9],    # Top left
            [7.5, 9.9],    # Top right
            [4.5, 6.7],    # Bottom left
            [7.5, 6.7],    # Bottom right
            
            # Room C
            [10.0, 8.0],   # Center
            [8.9, 9.9],    # Top left
            [12.3, 9.9],   # Top right
            [8.9, 6.7],    # Bottom left
            [12.3, 6.7],   # Bottom right

            # Room F
            [10.0, 2.6],   # Center
            [8.9, 4.2],   # Top left
            [12.3, 4.2],   # Top right
            [8.9, 1.6],   # Bottom left
            [12.3, 1.6],   # Bottom right

            # Room E
            [6.0, 3.6],    # Center
            [4.5, 5.1],    # Top left
            [7.5, 5.1],    # Top right
            [4.5, 1.7],    # Bottom left
            [7.5, 1.7],    # Bottom right

            # Room D
            [2.0, 3.3],    # Center
            [0.7, 5.1],    # Top left
            [2.9, 5.1],    # Top right
            [0.7, 1.7],    # Bottom left
            [2.9, 1.7],    # Bottom right
        ]

        self.tts_pub = rospy.Publisher('/tts/phrase', String, queue_size=10)
        self.end_point = [6.0, 3.6]

        self.sm = StateMachine(
            outcomes=['succeeded', 'aborted', 'preempted']
        )
        
        self.sm.userdata.target_pose = None
        self.sm.userdata.current_pose = None
        self.sm.userdata.latest_detection_pose = None
        self.sm.userdata.person_poses = []
        self.sm.userdata.cat_poses = []
        self.sm.userdata.dog_poses = []
        self.sm.userdata.latest_detection_pose = None
        
        with self.sm:
            StateMachine.add('NAVIGATE', 
                NavigationState(),
                transitions={'reached':'DETECT',
                           'failed':'aborted',
                           'preempted':'preempted'},
                remapping={'target_pose':'target_pose'})
                           
            StateMachine.add('DETECT', 
                DetectionState(marker_pub, action_server),  
                transitions={'detected':'succeeded',
                           'none':'succeeded',
                           'preempted':'preempted'},
                remapping={'current_pose':'current_pose',
                          'latest_detection_pose':'latest_detection_pose',
                          'person_poses':'person_poses',
                          'cat_poses':'cat_poses',
                          'dog_poses':'dog_poses'})

    def create_pose(self, point):
        pose = Pose()
        pose.position.x = point[0]
        pose.position.y = point[1]
        
        room_centers = {
            'A': [2.0, 8.0],
            'B': [6.0, 8.0],
            'C': [10.7, 8.3],
            'D': [2.0, 3.3],
            'E': [6.0, 3.6],
            'F': [10.6, 2.6]
        }
        
        min_dist = float('inf')
        closest_center = [6.0, 5.0]  # Default to map center
        for center in room_centers.values():
            dist = ((point[0] - center[0])**2 + (point[1] - center[1])**2)**0.5
            if dist < min_dist:
                min_dist = dist
                closest_center = center
        
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

        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'

        try:
            userdata.latest_detection_pose = None
            
            rospy.loginfo("Patrolling")
            try:
                for point in self.points:
                    if (rospy.Time.now() - userdata.start_time) >= userdata.duration:
                        rospy.loginfo("Patrol duration expired, returning to room E")
                        target_pose = self.create_pose(self.end_point)
                        self.sm.userdata.target_pose = target_pose
                        self.sm.userdata.current_pose = target_pose
                        return_outcome = self.sm.execute()
                        return 'succeeded' if return_outcome == 'succeeded' else 'aborted'

                    if rospy.is_shutdown() or self.preempt_requested():
                        return 'preempted'

                    # Set up current navigation target
                    target_pose = self.create_pose(point)
                    self.sm.userdata.target_pose = target_pose
                    self.sm.userdata.current_pose = target_pose
                    
                    outcome = self.sm.execute()
                    if outcome != 'succeeded':
                        return outcome
                    if hasattr(self.sm.userdata, 'latest_detection_pose'):
                        userdata.latest_detection_pose = self.sm.userdata.latest_detection_pose

                    rospy.sleep(1.0)
                
                rospy.loginfo("Patrol complete, returning to room E")
                target_pose = self.create_pose(self.end_point)
                self.sm.userdata.target_pose = target_pose
                self.sm.userdata.current_pose = target_pose
                return_outcome = self.sm.execute()
                return 'succeeded' if return_outcome == 'succeeded' else 'aborted'
                
            except Exception as e:
                rospy.logerr(f"Error in patrol: {e}")
                return 'aborted'
            
        except Exception as e:
            rospy.logerr(f"Error in patrol state: {e}")
            return 'aborted'
