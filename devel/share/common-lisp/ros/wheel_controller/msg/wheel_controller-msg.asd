
(cl:in-package :asdf)

(defsystem "wheel_controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WheelDirection" :depends-on ("_package_WheelDirection"))
    (:file "_package_WheelDirection" :depends-on ("_package"))
  ))