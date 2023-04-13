;; Auto-generated. Do not edit!


(when (boundp 'vehicle_controller::VehicleState)
  (if (not (find-package "VEHICLE_CONTROLLER"))
    (make-package "VEHICLE_CONTROLLER"))
  (shadow 'VehicleState (find-package "VEHICLE_CONTROLLER")))
(unless (find-package "VEHICLE_CONTROLLER::VEHICLESTATE")
  (make-package "VEHICLE_CONTROLLER::VEHICLESTATE"))

(in-package "ROS")
;;//! \htmlinclude VehicleState.msg.html


(defclass vehicle_controller::VehicleState
  :super ros::object
  :slots (_vehicle_state _vel_x _vel_y _vel_r _pos_x _pos_y _pos_r ))

(defmethod vehicle_controller::VehicleState
  (:init
   (&key
    ((:vehicle_state __vehicle_state) "")
    ((:vel_x __vel_x) 0.0)
    ((:vel_y __vel_y) 0.0)
    ((:vel_r __vel_r) 0.0)
    ((:pos_x __pos_x) 0.0)
    ((:pos_y __pos_y) 0.0)
    ((:pos_r __pos_r) 0.0)
    )
   (send-super :init)
   (setq _vehicle_state (string __vehicle_state))
   (setq _vel_x (float __vel_x))
   (setq _vel_y (float __vel_y))
   (setq _vel_r (float __vel_r))
   (setq _pos_x (float __pos_x))
   (setq _pos_y (float __pos_y))
   (setq _pos_r (float __pos_r))
   self)
  (:vehicle_state
   (&optional __vehicle_state)
   (if __vehicle_state (setq _vehicle_state __vehicle_state)) _vehicle_state)
  (:vel_x
   (&optional __vel_x)
   (if __vel_x (setq _vel_x __vel_x)) _vel_x)
  (:vel_y
   (&optional __vel_y)
   (if __vel_y (setq _vel_y __vel_y)) _vel_y)
  (:vel_r
   (&optional __vel_r)
   (if __vel_r (setq _vel_r __vel_r)) _vel_r)
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
    ;; string _vehicle_state
    4 (length _vehicle_state)
    ;; float32 _vel_x
    4
    ;; float32 _vel_y
    4
    ;; float32 _vel_r
    4
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
     ;; string _vehicle_state
       (write-long (length _vehicle_state) s) (princ _vehicle_state s)
     ;; float32 _vel_x
       (sys::poke _vel_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_y
       (sys::poke _vel_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_r
       (sys::poke _vel_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; string _vehicle_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vehicle_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _vel_x
     (setq _vel_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_y
     (setq _vel_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_r
     (setq _vel_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_x
     (setq _pos_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_y
     (setq _pos_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_r
     (setq _pos_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vehicle_controller::VehicleState :md5sum-) "23e2b9f9a84fb74dca9501a8f8e94a69")
(setf (get vehicle_controller::VehicleState :datatype-) "vehicle_controller/VehicleState")
(setf (get vehicle_controller::VehicleState :definition-)
      "string  vehicle_state
float32 vel_x
float32 vel_y
float32 vel_r
float32 pos_x
float32 pos_y
float32 pos_r
")



(provide :vehicle_controller/VehicleState "23e2b9f9a84fb74dca9501a8f8e94a69")


