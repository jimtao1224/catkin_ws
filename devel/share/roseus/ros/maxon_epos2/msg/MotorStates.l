;; Auto-generated. Do not edit!


(when (boundp 'maxon_epos2::MotorStates)
  (if (not (find-package "MAXON_EPOS2"))
    (make-package "MAXON_EPOS2"))
  (shadow 'MotorStates (find-package "MAXON_EPOS2")))
(unless (find-package "MAXON_EPOS2::MOTORSTATES")
  (make-package "MAXON_EPOS2::MOTORSTATES"))

(in-package "ROS")
;;//! \htmlinclude MotorStates.msg.html


(defclass maxon_epos2::MotorStates
  :super ros::object
  :slots (_motor_states ))

(defmethod maxon_epos2::MotorStates
  (:init
   (&key
    ((:motor_states __motor_states) ())
    )
   (send-super :init)
   (setq _motor_states __motor_states)
   self)
  (:motor_states
   (&rest __motor_states)
   (if (keywordp (car __motor_states))
       (send* _motor_states __motor_states)
     (progn
       (if __motor_states (setq _motor_states (car __motor_states)))
       _motor_states)))
  (:serialization-length
   ()
   (+
    ;; maxon_epos2/MotorState[] _motor_states
    (apply #'+ (send-all _motor_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; maxon_epos2/MotorState[] _motor_states
     (write-long (length _motor_states) s)
     (dolist (elem _motor_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; maxon_epos2/MotorState[] _motor_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_states (let (r) (dotimes (i n) (push (instance maxon_epos2::MotorState :init) r)) r))
     (dolist (elem- _motor_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get maxon_epos2::MotorStates :md5sum-) "a5b0a65f417d44d6769d684f20442892")
(setf (get maxon_epos2::MotorStates :datatype-) "maxon_epos2/MotorStates")
(setf (get maxon_epos2::MotorStates :definition-)
      "MotorState[] motor_states
================================================================================
MSG: maxon_epos2/MotorState
int32   motor_id
float64 pos
float64 vel
float64 cur
")



(provide :maxon_epos2/MotorStates "a5b0a65f417d44d6769d684f20442892")


