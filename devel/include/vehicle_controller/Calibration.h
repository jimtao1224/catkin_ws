// Generated by gencpp from file vehicle_controller/Calibration.msg
// DO NOT EDIT!


#ifndef VEHICLE_CONTROLLER_MESSAGE_CALIBRATION_H
#define VEHICLE_CONTROLLER_MESSAGE_CALIBRATION_H

#include <ros/service_traits.h>


#include <vehicle_controller/CalibrationRequest.h>
#include <vehicle_controller/CalibrationResponse.h>


namespace vehicle_controller
{

struct Calibration
{

typedef CalibrationRequest Request;
typedef CalibrationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Calibration
} // namespace vehicle_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vehicle_controller::Calibration > {
  static const char* value()
  {
    return "68e41714fd40944f549e9fab985240f2";
  }

  static const char* value(const ::vehicle_controller::Calibration&) { return value(); }
};

template<>
struct DataType< ::vehicle_controller::Calibration > {
  static const char* value()
  {
    return "vehicle_controller/Calibration";
  }

  static const char* value(const ::vehicle_controller::Calibration&) { return value(); }
};


// service_traits::MD5Sum< ::vehicle_controller::CalibrationRequest> should match
// service_traits::MD5Sum< ::vehicle_controller::Calibration >
template<>
struct MD5Sum< ::vehicle_controller::CalibrationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vehicle_controller::Calibration >::value();
  }
  static const char* value(const ::vehicle_controller::CalibrationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vehicle_controller::CalibrationRequest> should match
// service_traits::DataType< ::vehicle_controller::Calibration >
template<>
struct DataType< ::vehicle_controller::CalibrationRequest>
{
  static const char* value()
  {
    return DataType< ::vehicle_controller::Calibration >::value();
  }
  static const char* value(const ::vehicle_controller::CalibrationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vehicle_controller::CalibrationResponse> should match
// service_traits::MD5Sum< ::vehicle_controller::Calibration >
template<>
struct MD5Sum< ::vehicle_controller::CalibrationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vehicle_controller::Calibration >::value();
  }
  static const char* value(const ::vehicle_controller::CalibrationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vehicle_controller::CalibrationResponse> should match
// service_traits::DataType< ::vehicle_controller::Calibration >
template<>
struct DataType< ::vehicle_controller::CalibrationResponse>
{
  static const char* value()
  {
    return DataType< ::vehicle_controller::Calibration >::value();
  }
  static const char* value(const ::vehicle_controller::CalibrationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VEHICLE_CONTROLLER_MESSAGE_CALIBRATION_H