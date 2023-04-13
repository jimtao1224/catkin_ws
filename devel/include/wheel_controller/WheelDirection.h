// Generated by gencpp from file wheel_controller/WheelDirection.msg
// DO NOT EDIT!


#ifndef WHEEL_CONTROLLER_MESSAGE_WHEELDIRECTION_H
#define WHEEL_CONTROLLER_MESSAGE_WHEELDIRECTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace wheel_controller
{
template <class ContainerAllocator>
struct WheelDirection_
{
  typedef WheelDirection_<ContainerAllocator> Type;

  WheelDirection_()
    : wheel_name()
    , dir_x(0.0)
    , dir_y(0.0)  {
    }
  WheelDirection_(const ContainerAllocator& _alloc)
    : wheel_name(_alloc)
    , dir_x(0.0)
    , dir_y(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _wheel_name_type;
  _wheel_name_type wheel_name;

   typedef float _dir_x_type;
  _dir_x_type dir_x;

   typedef float _dir_y_type;
  _dir_y_type dir_y;





  typedef boost::shared_ptr< ::wheel_controller::WheelDirection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wheel_controller::WheelDirection_<ContainerAllocator> const> ConstPtr;

}; // struct WheelDirection_

typedef ::wheel_controller::WheelDirection_<std::allocator<void> > WheelDirection;

typedef boost::shared_ptr< ::wheel_controller::WheelDirection > WheelDirectionPtr;
typedef boost::shared_ptr< ::wheel_controller::WheelDirection const> WheelDirectionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wheel_controller::WheelDirection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wheel_controller::WheelDirection_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::wheel_controller::WheelDirection_<ContainerAllocator1> & lhs, const ::wheel_controller::WheelDirection_<ContainerAllocator2> & rhs)
{
  return lhs.wheel_name == rhs.wheel_name &&
    lhs.dir_x == rhs.dir_x &&
    lhs.dir_y == rhs.dir_y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::wheel_controller::WheelDirection_<ContainerAllocator1> & lhs, const ::wheel_controller::WheelDirection_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace wheel_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::wheel_controller::WheelDirection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wheel_controller::WheelDirection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wheel_controller::WheelDirection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wheel_controller::WheelDirection_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wheel_controller::WheelDirection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wheel_controller::WheelDirection_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wheel_controller::WheelDirection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cf40030702854cebce57b05560a71a3a";
  }

  static const char* value(const ::wheel_controller::WheelDirection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcf40030702854cebULL;
  static const uint64_t static_value2 = 0xce57b05560a71a3aULL;
};

template<class ContainerAllocator>
struct DataType< ::wheel_controller::WheelDirection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wheel_controller/WheelDirection";
  }

  static const char* value(const ::wheel_controller::WheelDirection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wheel_controller::WheelDirection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string     wheel_name\n"
"float32    dir_x\n"
"float32    dir_y\n"
;
  }

  static const char* value(const ::wheel_controller::WheelDirection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wheel_controller::WheelDirection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.wheel_name);
      stream.next(m.dir_x);
      stream.next(m.dir_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WheelDirection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wheel_controller::WheelDirection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wheel_controller::WheelDirection_<ContainerAllocator>& v)
  {
    s << indent << "wheel_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.wheel_name);
    s << indent << "dir_x: ";
    Printer<float>::stream(s, indent + "  ", v.dir_x);
    s << indent << "dir_y: ";
    Printer<float>::stream(s, indent + "  ", v.dir_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHEEL_CONTROLLER_MESSAGE_WHEELDIRECTION_H