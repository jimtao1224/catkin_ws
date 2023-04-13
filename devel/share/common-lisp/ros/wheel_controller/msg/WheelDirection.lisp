; Auto-generated. Do not edit!


(cl:in-package wheel_controller-msg)


;//! \htmlinclude WheelDirection.msg.html

(cl:defclass <WheelDirection> (roslisp-msg-protocol:ros-message)
  ((wheel_name
    :reader wheel_name
    :initarg :wheel_name
    :type cl:string
    :initform "")
   (dir_x
    :reader dir_x
    :initarg :dir_x
    :type cl:float
    :initform 0.0)
   (dir_y
    :reader dir_y
    :initarg :dir_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass WheelDirection (<WheelDirection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelDirection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelDirection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wheel_controller-msg:<WheelDirection> is deprecated: use wheel_controller-msg:WheelDirection instead.")))

(cl:ensure-generic-function 'wheel_name-val :lambda-list '(m))
(cl:defmethod wheel_name-val ((m <WheelDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wheel_controller-msg:wheel_name-val is deprecated.  Use wheel_controller-msg:wheel_name instead.")
  (wheel_name m))

(cl:ensure-generic-function 'dir_x-val :lambda-list '(m))
(cl:defmethod dir_x-val ((m <WheelDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wheel_controller-msg:dir_x-val is deprecated.  Use wheel_controller-msg:dir_x instead.")
  (dir_x m))

(cl:ensure-generic-function 'dir_y-val :lambda-list '(m))
(cl:defmethod dir_y-val ((m <WheelDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wheel_controller-msg:dir_y-val is deprecated.  Use wheel_controller-msg:dir_y instead.")
  (dir_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelDirection>) ostream)
  "Serializes a message object of type '<WheelDirection>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wheel_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wheel_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dir_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dir_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelDirection>) istream)
  "Deserializes a message object of type '<WheelDirection>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wheel_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dir_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dir_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelDirection>)))
  "Returns string type for a message object of type '<WheelDirection>"
  "wheel_controller/WheelDirection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelDirection)))
  "Returns string type for a message object of type 'WheelDirection"
  "wheel_controller/WheelDirection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelDirection>)))
  "Returns md5sum for a message object of type '<WheelDirection>"
  "cf40030702854cebce57b05560a71a3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelDirection)))
  "Returns md5sum for a message object of type 'WheelDirection"
  "cf40030702854cebce57b05560a71a3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelDirection>)))
  "Returns full string definition for message of type '<WheelDirection>"
  (cl:format cl:nil "string     wheel_name~%float32    dir_x~%float32    dir_y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelDirection)))
  "Returns full string definition for message of type 'WheelDirection"
  (cl:format cl:nil "string     wheel_name~%float32    dir_x~%float32    dir_y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelDirection>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'wheel_name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelDirection>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelDirection
    (cl:cons ':wheel_name (wheel_name msg))
    (cl:cons ':dir_x (dir_x msg))
    (cl:cons ':dir_y (dir_y msg))
))
