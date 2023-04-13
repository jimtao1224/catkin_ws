;; Auto-generated. Do not edit!


(when (boundp 'maxon_epos2::MotorCmds)
  (if (not (find-package "MAXON_EPOS2"))
    (make-package "MAXON_EPOS2"))
  (shadow 'MotorCmds (find-package "MAXON_EPOS2")))
(unless (find-package "MAXON_EPOS2::MOTORCMDS")
  (make-package "MAXON_EPOS2::MOTORCMDS"))

(in-package "ROS")
;;//! \htmlinclude MotorCmds.msg.html


(defclass maxon_epos2::MotorCmds
  :super ros::object
  :slots (_motor_ids _cmd_values ))

(defmethod maxon_epos2::MotorCmds
  (:init
   (&key
    ((:motor_ids __motor_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cmd_values __cmd_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _motor_ids __motor_ids)
   (setq _cmd_values __cmd_values)
   self)
  (:motor_ids
   (&optional __motor_ids)
   (if __motor_ids (setq _motor_ids __motor_ids)) _motor_ids)
  (:cmd_values
   (&optional __cmd_values)
   (if __cmd_values (setq _cmd_values __cmd_values)) _cmd_values)
  (:serialization-length
   ()
   (+
    ;; int32[] _motor_ids
    (* 4    (length _motor_ids)) 4
    ;; float64[] _cmd_values
    (* 8    (length _cmd_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _motor_ids
     (write-long (length _motor_ids) s)
     (dotimes (i (length _motor_ids))
       (write-long (elt _motor_ids i) s)
       )
     ;; float64[] _cmd_values
     (write-long (length _cmd_values) s)
     (dotimes (i (length _cmd_values))
       (sys::poke (elt _cmd_values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _motor_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _cmd_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cmd_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cmd_values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get maxon_epos2::MotorCmds :md5sum-) "1b12e2645e04fa107d86efbd8fdcf3f5")
(setf (get maxon_epos2::MotorCmds :datatype-) "maxon_epos2/MotorCmds")
(setf (get maxon_epos2::MotorCmds :definition-)
      "int32[]   motor_ids
float64[] cmd_values
")



(provide :maxon_epos2/MotorCmds "1b12e2645e04fa107d86efbd8fdcf3f5")


