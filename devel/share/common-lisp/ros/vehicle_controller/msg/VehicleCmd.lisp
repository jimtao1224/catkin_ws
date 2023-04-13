; Auto-generated. Do not edit!


(cl:in-package vehicle_controller-msg)


;//! \htmlinclude VehicleCmd.msg.html

(cl:defclass <VehicleCmd> (roslisp-msg-protocol:ros-message)
  ((vel_x
    :reader vel_x
    :initarg :vel_x
    :type cl:float
    :initform 0.0)
   (vel_y
    :reader vel_y
    :initarg :vel_y
    :type cl:float
    :initform 0.0)
   (vel_r
    :reader vel_r
    :initarg :vel_r
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleCmd (<VehicleCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_controller-msg:<VehicleCmd> is deprecated: use vehicle_controller-msg:VehicleCmd instead.")))

(cl:ensure-generic-function 'vel_x-val :lambda-list '(m))
(cl:defmethod vel_x-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-msg:vel_x-val is deprecated.  Use vehicle_controller-msg:vel_x instead.")
  (vel_x m))

(cl:ensure-generic-function 'vel_y-val :lambda-list '(m))
(cl:defmethod vel_y-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-msg:vel_y-val is deprecated.  Use vehicle_controller-msg:vel_y instead.")
  (vel_y m))

(cl:ensure-generic-function 'vel_r-val :lambda-list '(m))
(cl:defmethod vel_r-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-msg:vel_r-val is deprecated.  Use vehicle_controller-msg:vel_r instead.")
  (vel_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCmd>) ostream)
  "Serializes a message object of type '<VehicleCmd>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCmd>) istream)
  "Deserializes a message object of type '<VehicleCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_r) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCmd>)))
  "Returns string type for a message object of type '<VehicleCmd>"
  "vehicle_controller/VehicleCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCmd)))
  "Returns string type for a message object of type 'VehicleCmd"
  "vehicle_controller/VehicleCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCmd>)))
  "Returns md5sum for a message object of type '<VehicleCmd>"
  "b469c40e26903550ecb3eed6f99e613b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCmd)))
  "Returns md5sum for a message object of type 'VehicleCmd"
  "b469c40e26903550ecb3eed6f99e613b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCmd>)))
  "Returns full string definition for message of type '<VehicleCmd>"
  (cl:format cl:nil "float32 vel_x~%float32 vel_y~%float32 vel_r~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCmd)))
  "Returns full string definition for message of type 'VehicleCmd"
  (cl:format cl:nil "float32 vel_x~%float32 vel_y~%float32 vel_r~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCmd>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCmd
    (cl:cons ':vel_x (vel_x msg))
    (cl:cons ':vel_y (vel_y msg))
    (cl:cons ':vel_r (vel_r msg))
))
