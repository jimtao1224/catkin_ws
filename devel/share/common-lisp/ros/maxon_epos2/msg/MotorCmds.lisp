; Auto-generated. Do not edit!


(cl:in-package maxon_epos2-msg)


;//! \htmlinclude MotorCmds.msg.html

(cl:defclass <MotorCmds> (roslisp-msg-protocol:ros-message)
  ((motor_ids
    :reader motor_ids
    :initarg :motor_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (cmd_values
    :reader cmd_values
    :initarg :cmd_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MotorCmds (<MotorCmds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorCmds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorCmds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name maxon_epos2-msg:<MotorCmds> is deprecated: use maxon_epos2-msg:MotorCmds instead.")))

(cl:ensure-generic-function 'motor_ids-val :lambda-list '(m))
(cl:defmethod motor_ids-val ((m <MotorCmds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maxon_epos2-msg:motor_ids-val is deprecated.  Use maxon_epos2-msg:motor_ids instead.")
  (motor_ids m))

(cl:ensure-generic-function 'cmd_values-val :lambda-list '(m))
(cl:defmethod cmd_values-val ((m <MotorCmds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maxon_epos2-msg:cmd_values-val is deprecated.  Use maxon_epos2-msg:cmd_values instead.")
  (cmd_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorCmds>) ostream)
  "Serializes a message object of type '<MotorCmds>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motor_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'motor_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cmd_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'cmd_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorCmds>) istream)
  "Deserializes a message object of type '<MotorCmds>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motor_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motor_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cmd_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cmd_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorCmds>)))
  "Returns string type for a message object of type '<MotorCmds>"
  "maxon_epos2/MotorCmds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorCmds)))
  "Returns string type for a message object of type 'MotorCmds"
  "maxon_epos2/MotorCmds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorCmds>)))
  "Returns md5sum for a message object of type '<MotorCmds>"
  "1b12e2645e04fa107d86efbd8fdcf3f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorCmds)))
  "Returns md5sum for a message object of type 'MotorCmds"
  "1b12e2645e04fa107d86efbd8fdcf3f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorCmds>)))
  "Returns full string definition for message of type '<MotorCmds>"
  (cl:format cl:nil "int32[]   motor_ids~%float64[] cmd_values~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorCmds)))
  "Returns full string definition for message of type 'MotorCmds"
  (cl:format cl:nil "int32[]   motor_ids~%float64[] cmd_values~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorCmds>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motor_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cmd_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorCmds>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorCmds
    (cl:cons ':motor_ids (motor_ids msg))
    (cl:cons ':cmd_values (cmd_values msg))
))
