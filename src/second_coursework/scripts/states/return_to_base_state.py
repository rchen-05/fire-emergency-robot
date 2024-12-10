
#!/usr/bin/env python3
import rospy
from smach import State
from states.navigation_state import NavigationState
from geometry_msgs.msg import Pose
from tf.transformations import quaternion_from_euler

class ReturnToBaseState(State):
    def __init__(self):
        State.__init__(self,
                      outcomes=['succeeded', 'failed', 'preempted'])
        
        self.nav_state = NavigationState()
        self.base_point = [6.0, 3.6]  # Base coordinates

    def create_base_pose(self):
        pose = Pose()
        pose.position.x = self.base_point[0]
        pose.position.y = self.base_point[1]
        q = quaternion_from_euler(0, 0, 0)
        pose.orientation.x = q[0]
        pose.orientation.y = q[1]
        pose.orientation.z = q[2]
        pose.orientation.w = q[3]
        return pose

    def execute(self, userdata):
        try:
            self.nav_state.userdata.target_pose = self.create_base_pose()
            outcome = self.nav_state.execute(self.nav_state.userdata)
            return 'succeeded' if outcome == 'reached' else outcome
        except Exception as e:
            rospy.logerr(f"Error returning to base: {e}")
            return 'failed'