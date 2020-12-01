
(cl:in-package :asdf)

(defsystem "misc-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "intarray" :depends-on ("_package_intarray"))
    (:file "_package_intarray" :depends-on ("_package"))
  ))