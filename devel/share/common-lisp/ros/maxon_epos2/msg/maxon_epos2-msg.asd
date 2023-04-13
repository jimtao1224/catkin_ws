
(cl:in-package :asdf)

(defsystem "maxon_epos2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MotorCmds" :depends-on ("_package_MotorCmds"))
    (:file "_package_MotorCmds" :depends-on ("_package"))
    (:file "MotorState" :depends-on ("_package_MotorState"))
    (:file "_package_MotorState" :depends-on ("_package"))
    (:file "MotorStates" :depends-on ("_package_MotorStates"))
    (:file "_package_MotorStates" :depends-on ("_package"))
  ))