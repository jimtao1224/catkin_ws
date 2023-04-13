
(cl:in-package :asdf)

(defsystem "vehicle_controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "VehicleCmd" :depends-on ("_package_VehicleCmd"))
    (:file "_package_VehicleCmd" :depends-on ("_package"))
    (:file "VehicleState" :depends-on ("_package_VehicleState"))
    (:file "_package_VehicleState" :depends-on ("_package"))
  ))