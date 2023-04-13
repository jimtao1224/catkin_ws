;; Auto-generated. Do not edit!


(when (boundp 'vehicle_controller::VehicleCmd)
  (if (not (find-package "VEHICLE_CONTROLLER"))
    (make-package "VEHICLE_CONTROLLER"))
  (shadow 'VehicleCmd (find-package "VEHICLE_CONTROLLER")))
(unless (find-package "VEHICLE_CONTROLLER::VEHICLECMD")
  (make-package "VEHICLE_CONTROLLER::VEHICLECMD"))

(in-package "ROS")
;;//! \htmlinclude VehicleCmd.msg.html


(defclass vehicle_controller::VehicleCmd
  :super ros::object
  :slots (_vel_x _vel_y _vel_r ))

(defmethod vehicle_controller::VehicleCmd
  (:init
   (&key
    ((:vel_x __vel_x) 0.0)
    ((:vel_y __vel_y) 0.0)
    ((:vel_r __vel_r) 0.0)
    )
   (send-super :init)
   (setq _vel_x (float __vel_x))
   (setq _vel_y (float __vel_y))
   (setq _vel_r (float __vel_r))
   self)
  (:vel_x
   (&optional __vel_x)
   (if __vel_x (setq _vel_x __vel_x)) _vel_x)
  (:vel_y
   (&optional __vel_y)
   (if __vel_y (setq _vel_y __vel_y)) _vel_y)
  (:vel_r
   (&optional __vel_r)
   (if __vel_r (setq _vel_r __vel_r)) _vel_r)
  (:serialization-length
   ()
   (+
    ;; float32 _vel_x
    4
    ;; float32 _vel_y
    4
    ;; float32 _vel_r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vel_x
       (sys::poke _vel_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_y
       (sys::poke _vel_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_r
       (sys::poke _vel_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vel_x
     (setq _vel_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_y
     (setq _vel_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_r
     (setq _vel_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vehicle_controller::VehicleCmd :md5sum-) "b469c40e26903550ecb3eed6f99e613b")
(setf (get vehicle_controller::VehicleCmd :datatype-) "vehicle_controller/VehicleCmd")
(setf (get vehicle_controller::VehicleCmd :definition-)
      "float32 vel_x
float32 vel_y
float32 vel_r
")



(provide :vehicle_controller/VehicleCmd "b469c40e26903550ecb3eed6f99e613b")


