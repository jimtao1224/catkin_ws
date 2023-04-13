; Auto-generated. Do not edit!


(cl:in-package maxon_epos2-msg)


;//! \htmlinclude MotorStates.msg.html

(cl:defclass <MotorStates> (roslisp-msg-protocol:ros-message)
  ((motor_states
    :reader motor_states
    :initarg :motor_states
    :type (cl:vector maxon_epos2-msg:MotorState)
   :initform (cl:make-array 0 :element-type 'maxon_epos2-msg:MotorState :initial-element (cl:make-instance 'maxon_epos2-msg:MotorState))))
)

(cl:defclass MotorStates (<MotorStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name maxon_epos2-msg:<MotorStates> is deprecated: use maxon_epos2-msg:MotorStates instead.")))

(cl:ensure-generic-function 'motor_states-val :lambda-list '(m))
(cl:defmethod motor_states-val ((m <MotorStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maxon_epos2-msg:motor_states-val is deprecated.  Use maxon_epos2-msg:motor_states instead.")
  (motor_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorStates>) ostream)
  "Serializes a message object of type '<MotorStates>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motor_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motor_states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorStates>) istream)
  "Deserializes a message object of type '<MotorStates>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motor_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motor_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'maxon_epos2-msg:MotorState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorStates>)))
  "Returns string type for a message object of type '<MotorStates>"
  "maxon_epos2/MotorStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorStates)))
  "Returns string type for a message object of type 'MotorStates"
  "maxon_epos2/MotorStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorStates>)))
  "Returns md5sum for a message object of type '<MotorStates>"
  "a5b0a65f417d44d6769d684f20442892")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorStates)))
  "Returns md5sum for a message object of type 'MotorStates"
  "a5b0a65f417d44d6769d684f20442892")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorStates>)))
  "Returns full string definition for message of type '<MotorStates>"
  (cl:format cl:nil "MotorState[] motor_states~%================================================================================~%MSG: maxon_epos2/MotorState~%int32   motor_id~%float64 pos~%float64 vel~%float64 cur~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorStates)))
  "Returns full string definition for message of type 'MotorStates"
  (cl:format cl:nil "MotorState[] motor_states~%================================================================================~%MSG: maxon_epos2/MotorState~%int32   motor_id~%float64 pos~%float64 vel~%float64 cur~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorStates>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motor_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorStates>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorStates
    (cl:cons ':motor_states (motor_states msg))
))
