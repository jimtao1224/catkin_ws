;; Auto-generated. Do not edit!


(when (boundp 'maxon_epos2::MotorState)
  (if (not (find-package "MAXON_EPOS2"))
    (make-package "MAXON_EPOS2"))
  (shadow 'MotorState (find-package "MAXON_EPOS2")))
(unless (find-package "MAXON_EPOS2::MOTORSTATE")
  (make-package "MAXON_EPOS2::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(defclass maxon_epos2::MotorState
  :super ros::object
  :slots (_motor_id _pos _vel _cur ))

(defmethod maxon_epos2::MotorState
  (:init
   (&key
    ((:motor_id __motor_id) 0)
    ((:pos __pos) 0.0)
    ((:vel __vel) 0.0)
    ((:cur __cur) 0.0)
    )
   (send-super :init)
   (setq _motor_id (round __motor_id))
   (setq _pos (float __pos))
   (setq _vel (float __vel))
   (setq _cur (float __cur))
   self)
  (:motor_id
   (&optional __motor_id)
   (if __motor_id (setq _motor_id __motor_id)) _motor_id)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:cur
   (&optional __cur)
   (if __cur (setq _cur __cur)) _cur)
  (:serialization-length
   ()
   (+
    ;; int32 _motor_id
    4
    ;; float64 _pos
    8
    ;; float64 _vel
    8
    ;; float64 _cur
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _motor_id
       (write-long _motor_id s)
     ;; float64 _pos
       (sys::poke _pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur
       (sys::poke _cur (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _motor_id
     (setq _motor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _pos
     (setq _pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur
     (setq _cur (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get maxon_epos2::MotorState :md5sum-) "a6bd4ada87b249d3b15c0971aa64e0cb")
(setf (get maxon_epos2::MotorState :datatype-) "maxon_epos2/MotorState")
(setf (get maxon_epos2::MotorState :definition-)
      "int32   motor_id
float64 pos
float64 vel
float64 cur
")



(provide :maxon_epos2/MotorState "a6bd4ada87b249d3b15c0971aa64e0cb")


