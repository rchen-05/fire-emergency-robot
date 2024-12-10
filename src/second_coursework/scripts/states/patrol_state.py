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
        State.__init__(self, 
                      outcomes=['succeeded', 'aborted', 'preempted'],
                      input_keys=['people_poses', 'cat_poses', 'dog_poses'],  # Add as input keys
                      output_keys=['people_poses', 'cat_poses', 'dog_poses'])
        
        self.points = [
            [2.0, 8.0],   # Room A
            [6.0, 8.0],   # Room B
            [10.0, 8.0],  # Room C
            [2.0, 3.3],   # Room D
            [6.0, 3.6],   # Room E
            [10.6, 2.6],  # Room F
        ]
        self.end_point = [6.0, 3.6]
        
        # Create state machine with all required keys
        self.sm = StateMachine(
            outcomes=['succeeded', 'aborted', 'preempted'],
            input_keys=['people_poses', 'cat_poses', 'dog_poses'],
            output_keys=['detections', 'people_poses', 'cat_poses', 'dog_poses']
        )
        
        # Initialize detections
        self.sm.userdata.people_poses = []
        self.sm.userdata.cat_poses = []
        self.sm.userdata.dog_poses = []
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
        theta = math.atan2(-pose.position.y, -pose.position.x)
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