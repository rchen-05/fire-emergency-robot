// Generated by gencpp from file second_coursework/yolo_detection.msg
// DO NOT EDIT!


#ifndef SECOND_COURSEWORK_MESSAGE_YOLO_DETECTION_H
#define SECOND_COURSEWORK_MESSAGE_YOLO_DETECTION_H


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
struct yolo_detection_
{
  typedef yolo_detection_<ContainerAllocator> Type;

  yolo_detection_()
    : name()
    , confidence(0.0)
    , bbox_x(0)
    , bbox_y(0)
    , width(0)
    , height(0)  {
    }
  yolo_detection_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , confidence(0.0)
    , bbox_x(0)
    , bbox_y(0)
    , width(0)
    , height(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef float _confidence_type;
  _confidence_type confidence;

   typedef uint32_t _bbox_x_type;
  _bbox_x_type bbox_x;

   typedef uint32_t _bbox_y_type;
  _bbox_y_type bbox_y;

   typedef uint32_t _width_type;
  _width_type width;

   typedef uint32_t _height_type;
  _height_type height;





  typedef boost::shared_ptr< ::second_coursework::yolo_detection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::second_coursework::yolo_detection_<ContainerAllocator> const> ConstPtr;

}; // struct yolo_detection_

typedef ::second_coursework::yolo_detection_<std::allocator<void> > yolo_detection;

typedef boost::shared_ptr< ::second_coursework::yolo_detection > yolo_detectionPtr;
typedef boost::shared_ptr< ::second_coursework::yolo_detection const> yolo_detectionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::second_coursework::yolo_detection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::second_coursework::yolo_detection_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::second_coursework::yolo_detection_<ContainerAllocator1> & lhs, const ::second_coursework::yolo_detection_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.confidence == rhs.confidence &&
    lhs.bbox_x == rhs.bbox_x &&
    lhs.bbox_y == rhs.bbox_y &&
    lhs.width == rhs.width &&
    lhs.height == rhs.height;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::second_coursework::yolo_detection_<ContainerAllocator1> & lhs, const ::second_coursework::yolo_detection_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace second_coursework

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::second_coursework::yolo_detection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::second_coursework::yolo_detection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::second_coursework::yolo_detection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::second_coursework::yolo_detection_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::second_coursework::yolo_detection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::second_coursework::yolo_detection_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::second_coursework::yolo_detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de0eecaab55004c1fd70d270f48fe537";
  }

  static const char* value(const ::second_coursework::yolo_detection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde0eecaab55004c1ULL;
  static const uint64_t static_value2 = 0xfd70d270f48fe537ULL;
};

template<class ContainerAllocator>
struct DataType< ::second_coursework::yolo_detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "second_coursework/yolo_detection";
  }

  static const char* value(const ::second_coursework::yolo_detection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::second_coursework::yolo_detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"float32 confidence\n"
"uint32 bbox_x\n"
"uint32 bbox_y\n"
"uint32 width\n"
"uint32 height\n"
;
  }

  static const char* value(const ::second_coursework::yolo_detection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::second_coursework::yolo_detection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.confidence);
      stream.next(m.bbox_x);
      stream.next(m.bbox_y);
      stream.next(m.width);
      stream.next(m.height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct yolo_detection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::second_coursework::yolo_detection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::second_coursework::yolo_detection_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
    s << indent << "bbox_x: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.bbox_x);
    s << indent << "bbox_y: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.bbox_y);
    s << indent << "width: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SECOND_COURSEWORK_MESSAGE_YOLO_DETECTION_H
