
(cl:in-package :asdf)

(defsystem "vehicle_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Calibration" :depends-on ("_package_Calibration"))
    (:file "_package_Calibration" :depends-on ("_package"))
  ))