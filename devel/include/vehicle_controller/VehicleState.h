// Generated by gencpp from file vehicle_controller/VehicleState.msg
// DO NOT EDIT!


#ifndef VEHICLE_CONTROLLER_MESSAGE_VEHICLESTATE_H
#define VEHICLE_CONTROLLER_MESSAGE_VEHICLESTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace vehicle_controller
{
template <class ContainerAllocator>
struct VehicleState_
{
  typedef VehicleState_<ContainerAllocator> Type;

  VehicleState_()
    : vehicle_state()
    , vel_x(0.0)
    , vel_y(0.0)
    , vel_r(0.0)
    , pos_x(0.0)
    , pos_y(0.0)
    , pos_r(0.0)  {
    }
  VehicleState_(const ContainerAllocator& _alloc)
    : vehicle_state(_alloc)
    , vel_x(0.0)
    , vel_y(0.0)
    , vel_r(0.0)
    , pos_x(0.0)
    , pos_y(0.0)
    , pos_r(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _vehicle_state_type;
  _vehicle_state_type vehicle_state;

   typedef float _vel_x_type;
  _vel_x_type vel_x;

   typedef float _vel_y_type;
  _vel_y_type vel_y;

   typedef float _vel_r_type;
  _vel_r_type vel_r;

   typedef float _pos_x_type;
  _pos_x_type pos_x;

   typedef float _pos_y_type;
  _pos_y_type pos_y;

   typedef float _pos_r_type;
  _pos_r_type pos_r;





  typedef boost::shared_ptr< ::vehicle_controller::VehicleState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vehicle_controller::VehicleState_<ContainerAllocator> const> ConstPtr;

}; // struct VehicleState_

typedef ::vehicle_controller::VehicleState_<std::allocator<void> > VehicleState;

typedef boost::shared_ptr< ::vehicle_controller::VehicleState > VehicleStatePtr;
typedef boost::shared_ptr< ::vehicle_controller::VehicleState const> VehicleStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vehicle_controller::VehicleState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vehicle_controller::VehicleState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::vehicle_controller::VehicleState_<ContainerAllocator1> & lhs, const ::vehicle_controller::VehicleState_<ContainerAllocator2> & rhs)
{
  return lhs.vehicle_state == rhs.vehicle_state &&
    lhs.vel_x == rhs.vel_x &&
    lhs.vel_y == rhs.vel_y &&
    lhs.vel_r == rhs.vel_r &&
    lhs.pos_x == rhs.pos_x &&
    lhs.pos_y == rhs.pos_y &&
    lhs.pos_r == rhs.pos_r;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::vehicle_controller::VehicleState_<ContainerAllocator1> & lhs, const ::vehicle_controller::VehicleState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace vehicle_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::vehicle_controller::VehicleState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vehicle_controller::VehicleState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vehicle_controller::VehicleState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vehicle_controller::VehicleState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vehicle_controller::VehicleState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vehicle_controller::VehicleState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vehicle_controller::VehicleState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "23e2b9f9a84fb74dca9501a8f8e94a69";
  }

  static const char* value(const ::vehicle_controller::VehicleState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x23e2b9f9a84fb74dULL;
  static const uint64_t static_value2 = 0xca9501a8f8e94a69ULL;
};

template<class ContainerAllocator>
struct DataType< ::vehicle_controller::VehicleState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vehicle_controller/VehicleState";
  }

  static const char* value(const ::vehicle_controller::VehicleState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vehicle_controller::VehicleState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string  vehicle_state\n"
"float32 vel_x\n"
"float32 vel_y\n"
"float32 vel_r\n"
"float32 pos_x\n"
"float32 pos_y\n"
"float32 pos_r\n"
;
  }

  static const char* value(const ::vehicle_controller::VehicleState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vehicle_controller::VehicleState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vehicle_state);
      stream.next(m.vel_x);
      stream.next(m.vel_y);
      stream.next(m.vel_r);
      stream.next(m.pos_x);
      stream.next(m.pos_y);
      stream.next(m.pos_r);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VehicleState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vehicle_controller::VehicleState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vehicle_controller::VehicleState_<ContainerAllocator>& v)
  {
    s << indent << "vehicle_state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.vehicle_state);
    s << indent << "vel_x: ";
    Printer<float>::stream(s, indent + "  ", v.vel_x);
    s << indent << "vel_y: ";
    Printer<float>::stream(s, indent + "  ", v.vel_y);
    s << indent << "vel_r: ";
    Printer<float>::stream(s, indent + "  ", v.vel_r);
    s << indent << "pos_x: ";
    Printer<float>::stream(s, indent + "  ", v.pos_x);
    s << indent << "pos_y: ";
    Printer<float>::stream(s, indent + "  ", v.pos_y);
    s << indent << "pos_r: ";
    Printer<float>::stream(s, indent + "  ", v.pos_r);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VEHICLE_CONTROLLER_MESSAGE_VEHICLESTATE_H
