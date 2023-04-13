; Auto-generated. Do not edit!


(cl:in-package vehicle_controller-msg)


;//! \htmlinclude VehicleState.msg.html

(cl:defclass <VehicleState> (roslisp-msg-protocol:ros-message)
  ((vehicle_state
    :reader vehicle_state
    :initarg :vehicle_state
    :type cl:string
    :initform "")
   (vel_x
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
    :initform 0.0)
   (pos_x
    :reader pos_x
    :initarg :pos_x
    :type cl:float
    :initform 0.0)
   (pos_y
    :reader pos_y
    :initarg :pos_y
    :type cl:float
    :initform 0.0)
   (pos_r
    :reader pos_r
    :initarg :pos_r
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleState (<VehicleState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_controller-msg:<VehicleState> is deprecated: use vehicle_controller-msg:VehicleState instead.")))

(cl:ensure-generic-function 'vehicle_state-val :lambda-list '(m))
(cl:defmethod vehicle_state-val ((m <VehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-msg:vehicle_state-val is deprecated.  Use vehicle_controller-msg:vehicle_state instead.")
  (vehicle_state m))

(cl:ensure-generic-function 'vel_x-val :lambda-list '(m))
(cl:defmethod vel_x-val ((m <VehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-msg:vel_x-val is deprecated.  Use vehicle_controller-msg:vel_x instead.")
  (vel_x m))

(cl:ensure-generic-function 'vel_y-val :lambda-list '(m))
(cl:defmethod vel_y-val ((m <VehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-msg:vel_y-val is deprecated.  Use vehicle_controller-msg:vel_y instead.")
  (vel_y m))

(cl:ensure-generic-function 'vel_r-val :lambda-list '(m))
(cl:defmethod vel_r-val ((m <VehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-msg:vel_r-val is deprecated.  Use vehicle_controller-msg:vel_r instead.")
  (vel_r m))

(cl:ensure-generic-function 'pos_x-val :lambda-list '(m))
(cl:defmethod pos_x-val ((m <VehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-msg:pos_x-val is deprecated.  Use vehicle_controller-msg:pos_x instead.")
  (pos_x m))

(cl:ensure-generic-function 'pos_y-val :lambda-list '(m))
(cl:defmethod pos_y-val ((m <VehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-msg:pos_y-val is deprecated.  Use vehicle_controller-msg:pos_y instead.")
  (pos_y m))

(cl:ensure-generic-function 'pos_r-val :lambda-list '(m))
(cl:defmethod pos_r-val ((m <VehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-msg:pos_r-val is deprecated.  Use vehicle_controller-msg:pos_r instead.")
  (pos_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleState>) ostream)
  "Serializes a message object of type '<VehicleState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vehicle_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vehicle_state))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleState>) istream)
  "Deserializes a message object of type '<VehicleState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vehicle_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_r) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleState>)))
  "Returns string type for a message object of type '<VehicleState>"
  "vehicle_controller/VehicleState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleState)))
  "Returns string type for a message object of type 'VehicleState"
  "vehicle_controller/VehicleState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleState>)))
  "Returns md5sum for a message object of type '<VehicleState>"
  "23e2b9f9a84fb74dca9501a8f8e94a69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleState)))
  "Returns md5sum for a message object of type 'VehicleState"
  "23e2b9f9a84fb74dca9501a8f8e94a69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleState>)))
  "Returns full string definition for message of type '<VehicleState>"
  (cl:format cl:nil "string  vehicle_state~%float32 vel_x~%float32 vel_y~%float32 vel_r~%float32 pos_x~%float32 pos_y~%float32 pos_r~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleState)))
  "Returns full string definition for message of type 'VehicleState"
  (cl:format cl:nil "string  vehicle_state~%float32 vel_x~%float32 vel_y~%float32 vel_r~%float32 pos_x~%float32 pos_y~%float32 pos_r~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'vehicle_state))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleState>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleState
    (cl:cons ':vehicle_state (vehicle_state msg))
    (cl:cons ':vel_x (vel_x msg))
    (cl:cons ':vel_y (vel_y msg))
    (cl:cons ':vel_r (vel_r msg))
    (cl:cons ':pos_x (pos_x msg))
    (cl:cons ':pos_y (pos_y msg))
    (cl:cons ':pos_r (pos_r msg))
))
