
(cl:in-package :asdf)

(defsystem "misc-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "floatarray" :depends-on ("_package_floatarray"))
    (:file "_package_floatarray" :depends-on ("_package"))
  ))