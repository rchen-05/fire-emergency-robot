#!/usr/bin/env python3
import rospy
from smach import State, StateMachine
from states.navigation_state import NavigationState
from states.detection_state import DetectionState

class RoomVisitState(State):
    def __init__(self):
        State.__init__(self,
                      outcomes=['completed', 'failed', 'preempted'],
                      input_keys=['target_pose', 'people_poses', 'cat_poses', 'dog_poses'],
                      output_keys=['people_poses', 'cat_poses', 'dog_poses'])

        self.sm = StateMachine(outcomes=['completed', 'failed', 'preempted'])
        
        with self.sm:
            StateMachine.add('NAVIGATE',
                           NavigationState(),
                           transitions={'reached':'DETECT',
                                      'failed':'failed',
                                      'preempted':'preempted'},
                           remapping={'target_pose':'target_pose'})
                           
            StateMachine.add('DETECT',
                           DetectionState(),
                           transitions={'detected':'completed',
                                      'none':'completed',
                                      'preempted':'preempted'},
                           remapping={'current_pose':'target_pose',
                                    'people_poses':'people_poses',
                                    'cat_poses':'cat_poses',
                                    'dog_poses':'dog_poses'})

    def execute(self, userdata):
        self.sm.userdata._update(userdata)
        outcome = self.sm.execute()
        userdata._update(self.sm.userdata)
        return outcome