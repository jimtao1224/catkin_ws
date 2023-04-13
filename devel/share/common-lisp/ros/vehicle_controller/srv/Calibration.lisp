; Auto-generated. Do not edit!


(cl:in-package vehicle_controller-srv)


;//! \htmlinclude Calibration-request.msg.html

(cl:defclass <Calibration-request> (roslisp-msg-protocol:ros-message)
  ((pos_x
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

(cl:defclass Calibration-request (<Calibration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calibration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calibration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_controller-srv:<Calibration-request> is deprecated: use vehicle_controller-srv:Calibration-request instead.")))

(cl:ensure-generic-function 'pos_x-val :lambda-list '(m))
(cl:defmethod pos_x-val ((m <Calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-srv:pos_x-val is deprecated.  Use vehicle_controller-srv:pos_x instead.")
  (pos_x m))

(cl:ensure-generic-function 'pos_y-val :lambda-list '(m))
(cl:defmethod pos_y-val ((m <Calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-srv:pos_y-val is deprecated.  Use vehicle_controller-srv:pos_y instead.")
  (pos_y m))

(cl:ensure-generic-function 'pos_r-val :lambda-list '(m))
(cl:defmethod pos_r-val ((m <Calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-srv:pos_r-val is deprecated.  Use vehicle_controller-srv:pos_r instead.")
  (pos_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calibration-request>) ostream)
  "Serializes a message object of type '<Calibration-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calibration-request>) istream)
  "Deserializes a message object of type '<Calibration-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calibration-request>)))
  "Returns string type for a service object of type '<Calibration-request>"
  "vehicle_controller/CalibrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calibration-request)))
  "Returns string type for a service object of type 'Calibration-request"
  "vehicle_controller/CalibrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calibration-request>)))
  "Returns md5sum for a message object of type '<Calibration-request>"
  "68e41714fd40944f549e9fab985240f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calibration-request)))
  "Returns md5sum for a message object of type 'Calibration-request"
  "68e41714fd40944f549e9fab985240f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calibration-request>)))
  "Returns full string definition for message of type '<Calibration-request>"
  (cl:format cl:nil "float32 pos_x~%float32 pos_y~%float32 pos_r~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calibration-request)))
  "Returns full string definition for message of type 'Calibration-request"
  (cl:format cl:nil "float32 pos_x~%float32 pos_y~%float32 pos_r~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calibration-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calibration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Calibration-request
    (cl:cons ':pos_x (pos_x msg))
    (cl:cons ':pos_y (pos_y msg))
    (cl:cons ':pos_r (pos_r msg))
))
;//! \htmlinclude Calibration-response.msg.html

(cl:defclass <Calibration-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Calibration-response (<Calibration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calibration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calibration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_controller-srv:<Calibration-response> is deprecated: use vehicle_controller-srv:Calibration-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Calibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_controller-srv:success-val is deprecated.  Use vehicle_controller-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calibration-response>) ostream)
  "Serializes a message object of type '<Calibration-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calibration-response>) istream)
  "Deserializes a message object of type '<Calibration-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calibration-response>)))
  "Returns string type for a service object of type '<Calibration-response>"
  "vehicle_controller/CalibrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calibration-response)))
  "Returns string type for a service object of type 'Calibration-response"
  "vehicle_controller/CalibrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calibration-response>)))
  "Returns md5sum for a message object of type '<Calibration-response>"
  "68e41714fd40944f549e9fab985240f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calibration-response)))
  "Returns md5sum for a message object of type 'Calibration-response"
  "68e41714fd40944f549e9fab985240f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calibration-response>)))
  "Returns full string definition for message of type '<Calibration-response>"
  (cl:format cl:nil "~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calibration-response)))
  "Returns full string definition for message of type 'Calibration-response"
  (cl:format cl:nil "~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calibration-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calibration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Calibration-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Calibration)))
  'Calibration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Calibration)))
  'Calibration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calibration)))
  "Returns string type for a service object of type '<Calibration>"
  "vehicle_controller/Calibration")