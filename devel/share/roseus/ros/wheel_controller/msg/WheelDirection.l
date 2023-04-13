;; Auto-generated. Do not edit!


(when (boundp 'wheel_controller::WheelDirection)
  (if (not (find-package "WHEEL_CONTROLLER"))
    (make-package "WHEEL_CONTROLLER"))
  (shadow 'WheelDirection (find-package "WHEEL_CONTROLLER")))
(unless (find-package "WHEEL_CONTROLLER::WHEELDIRECTION")
  (make-package "WHEEL_CONTROLLER::WHEELDIRECTION"))

(in-package "ROS")
;;//! \htmlinclude WheelDirection.msg.html


(defclass wheel_controller::WheelDirection
  :super ros::object
  :slots (_wheel_name _dir_x _dir_y ))

(defmethod wheel_controller::WheelDirection
  (:init
   (&key
    ((:wheel_name __wheel_name) "")
    ((:dir_x __dir_x) 0.0)
    ((:dir_y __dir_y) 0.0)
    )
   (send-super :init)
   (setq _wheel_name (string __wheel_name))
   (setq _dir_x (float __dir_x))
   (setq _dir_y (float __dir_y))
   self)
  (:wheel_name
   (&optional __wheel_name)
   (if __wheel_name (setq _wheel_name __wheel_name)) _wheel_name)
  (:dir_x
   (&optional __dir_x)
   (if __dir_x (setq _dir_x __dir_x)) _dir_x)
  (:dir_y
   (&optional __dir_y)
   (if __dir_y (setq _dir_y __dir_y)) _dir_y)
  (:serialization-length
   ()
   (+
    ;; string _wheel_name
    4 (length _wheel_name)
    ;; float32 _dir_x
    4
    ;; float32 _dir_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _wheel_name
       (write-long (length _wheel_name) s) (princ _wheel_name s)
     ;; float32 _dir_x
       (sys::poke _dir_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dir_y
       (sys::poke _dir_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _wheel_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wheel_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _dir_x
     (setq _dir_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dir_y
     (setq _dir_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get wheel_controller::WheelDirection :md5sum-) "cf40030702854cebce57b05560a71a3a")
(setf (get wheel_controller::WheelDirection :datatype-) "wheel_controller/WheelDirection")
(setf (get wheel_controller::WheelDirection :definition-)
      "string     wheel_name
float32    dir_x
float32    dir_y
")



(provide :wheel_controller/WheelDirection "cf40030702854cebce57b05560a71a3a")


