// Generated by gencpp from file second_coursework/Emergency.msg
// DO NOT EDIT!


#ifndef SECOND_COURSEWORK_MESSAGE_EMERGENCY_H
#define SECOND_COURSEWORK_MESSAGE_EMERGENCY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace second_coursework
{
template <class ContainerAllocator>
struct Emergency_
{
  typedef Emergency_<ContainerAllocator> Type;

  Emergency_()
    : description()
    , duration()  {
    }
  Emergency_(const ContainerAllocator& _alloc)
    : description(_alloc)
    , duration()  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _description_type;
  _description_type description;

   typedef ros::Duration _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::second_coursework::Emergency_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::second_coursework::Emergency_<ContainerAllocator> const> ConstPtr;

}; // struct Emergency_

typedef ::second_coursework::Emergency_<std::allocator<void> > Emergency;

typedef boost::shared_ptr< ::second_coursework::Emergency > EmergencyPtr;
typedef boost::shared_ptr< ::second_coursework::Emergency const> EmergencyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::second_coursework::Emergency_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::second_coursework::Emergency_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::second_coursework::Emergency_<ContainerAllocator1> & lhs, const ::second_coursework::Emergency_<ContainerAllocator2> & rhs)
{
  return lhs.description == rhs.description &&
    lhs.duration == rhs.duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::second_coursework::Emergency_<ContainerAllocator1> & lhs, const ::second_coursework::Emergency_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace second_coursework

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::second_coursework::Emergency_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::second_coursework::Emergency_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::second_coursework::Emergency_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::second_coursework::Emergency_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::second_coursework::Emergency_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::second_coursework::Emergency_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::second_coursework::Emergency_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dacf83a9c1262fc213fc41089e525a3a";
  }

  static const char* value(const ::second_coursework::Emergency_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdacf83a9c1262fc2ULL;
  static const uint64_t static_value2 = 0x13fc41089e525a3aULL;
};

template<class ContainerAllocator>
struct DataType< ::second_coursework::Emergency_<ContainerAllocator> >
{
  static const char* value()
  {
    return "second_coursework/Emergency";
  }

  static const char* value(const ::second_coursework::Emergency_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::second_coursework::Emergency_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# msg/Emergency.msg\n"
"string description\n"
"duration duration  # Changed from patrol_time to match error\n"
;
  }

  static const char* value(const ::second_coursework::Emergency_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::second_coursework::Emergency_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.description);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Emergency_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::second_coursework::Emergency_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::second_coursework::Emergency_<ContainerAllocator>& v)
  {
    s << indent << "description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.description);
    s << indent << "duration: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SECOND_COURSEWORK_MESSAGE_EMERGENCY_H
