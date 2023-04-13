;; Auto-generated. Do not edit!


(when (boundp 'vehicle_controller::Calibration)
  (if (not (find-package "VEHICLE_CONTROLLER"))
    (make-package "VEHICLE_CONTROLLER"))
  (shadow 'Calibration (find-package "VEHICLE_CONTROLLER")))
(unless (find-package "VEHICLE_CONTROLLER::CALIBRATION")
  (make-package "VEHICLE_CONTROLLER::CALIBRATION"))
(unless (find-package "VEHICLE_CONTROLLER::CALIBRATIONREQUEST")
  (make-package "VEHICLE_CONTROLLER::CALIBRATIONREQUEST"))
(unless (find-package "VEHICLE_CONTROLLER::CALIBRATIONRESPONSE")
  (make-package "VEHICLE_CONTROLLER::CALIBRATIONRESPONSE"))

(in-package "ROS")





(defclass vehicle_controller::CalibrationRequest
  :super ros::object
  :slots (_pos_x _pos_y _pos_r ))

(defmethod vehicle_controller::CalibrationRequest
  (:init
   (&key
    ((:pos_x __pos_x) 0.0)
    ((:pos_y __pos_y) 0.0)
    ((:pos_r __pos_r) 0.0)
    )
   (send-super :init)
   (setq _pos_x (float __pos_x))
   (setq _pos_y (float __pos_y))
   (setq _pos_r (float __pos_r))
   self)
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:pos_r
   (&optional __pos_r)
   (if __pos_r (setq _pos_r __pos_r)) _pos_r)
  (:serialization-length
   ()
   (+
    ;; float32 _pos_x
    4
    ;; float32 _pos_y
    4
    ;; float32 _pos_r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pos_x
       (sys::poke _pos_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_y
       (sys::poke _pos_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_r
       (sys::poke _pos_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pos_x
     (setq _pos_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_y
     (setq _pos_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_r
     (setq _pos_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vehicle_controller::CalibrationResponse
  :super ros::object
  :slots (_success ))

(defmethod vehicle_controller::CalibrationResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vehicle_controller::Calibration
  :super ros::object
  :slots ())

(setf (get vehicle_controller::Calibration :md5sum-) "68e41714fd40944f549e9fab985240f2")
(setf (get vehicle_controller::Calibration :datatype-) "vehicle_controller/Calibration")
(setf (get vehicle_controller::Calibration :request) vehicle_controller::CalibrationRequest)
(setf (get vehicle_controller::Calibration :response) vehicle_controller::CalibrationResponse)

(defmethod vehicle_controller::CalibrationRequest
  (:response () (instance vehicle_controller::CalibrationResponse :init)))

(setf (get vehicle_controller::CalibrationRequest :md5sum-) "68e41714fd40944f549e9fab985240f2")
(setf (get vehicle_controller::CalibrationRequest :datatype-) "vehicle_controller/CalibrationRequest")
(setf (get vehicle_controller::CalibrationRequest :definition-)
      "float32 pos_x
float32 pos_y
float32 pos_r

---

bool success
")

(setf (get vehicle_controller::CalibrationResponse :md5sum-) "68e41714fd40944f549e9fab985240f2")
(setf (get vehicle_controller::CalibrationResponse :datatype-) "vehicle_controller/CalibrationResponse")
(setf (get vehicle_controller::CalibrationResponse :definition-)
      "float32 pos_x
float32 pos_y
float32 pos_r

---

bool success
")



(provide :vehicle_controller/Calibration "68e41714fd40944f549e9fab985240f2")


