# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from second_coursework/PatrolFeedback.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class PatrolFeedback(genpy.Message):
  _md5sum = "195414f01541c8b1d9f838f493884f8f"
  _type = "second_coursework/PatrolFeedback"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback
int32 new_people
int32 new_cats
int32 new_dogs
geometry_msgs/Pose last_detection_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['new_people','new_cats','new_dogs','last_detection_pose']
  _slot_types = ['int32','int32','int32','geometry_msgs/Pose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       new_people,new_cats,new_dogs,last_detection_pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PatrolFeedback, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.new_people is None:
        self.new_people = 0
      if self.new_cats is None:
        self.new_cats = 0
      if self.new_dogs is None:
        self.new_dogs = 0
      if self.last_detection_pose is None:
        self.last_detection_pose = geometry_msgs.msg.Pose()
    else:
      self.new_people = 0
      self.new_cats = 0
      self.new_dogs = 0
      self.last_detection_pose = geometry_msgs.msg.Pose()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3i7d().pack(_x.new_people, _x.new_cats, _x.new_dogs, _x.last_detection_pose.position.x, _x.last_detection_pose.position.y, _x.last_detection_pose.position.z, _x.last_detection_pose.orientation.x, _x.last_detection_pose.orientation.y, _x.last_detection_pose.orientation.z, _x.last_detection_pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.last_detection_pose is None:
        self.last_detection_pose = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 68
      (_x.new_people, _x.new_cats, _x.new_dogs, _x.last_detection_pose.position.x, _x.last_detection_pose.position.y, _x.last_detection_pose.position.z, _x.last_detection_pose.orientation.x, _x.last_detection_pose.orientation.y, _x.last_detection_pose.orientation.z, _x.last_detection_pose.orientation.w,) = _get_struct_3i7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3i7d().pack(_x.new_people, _x.new_cats, _x.new_dogs, _x.last_detection_pose.position.x, _x.last_detection_pose.position.y, _x.last_detection_pose.position.z, _x.last_detection_pose.orientation.x, _x.last_detection_pose.orientation.y, _x.last_detection_pose.orientation.z, _x.last_detection_pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.last_detection_pose is None:
        self.last_detection_pose = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 68
      (_x.new_people, _x.new_cats, _x.new_dogs, _x.last_detection_pose.position.x, _x.last_detection_pose.position.y, _x.last_detection_pose.position.z, _x.last_detection_pose.orientation.x, _x.last_detection_pose.orientation.y, _x.last_detection_pose.orientation.z, _x.last_detection_pose.orientation.w,) = _get_struct_3i7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3i7d = None
def _get_struct_3i7d():
    global _struct_3i7d
    if _struct_3i7d is None:
        _struct_3i7d = struct.Struct("<3i7d")
    return _struct_3i7d
