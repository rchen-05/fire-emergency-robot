
(cl:in-package :asdf)

(defsystem "second_coursework-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :second_coursework-msg
)
  :components ((:file "_package")
    (:file "YOLOLastFrame" :depends-on ("_package_YOLOLastFrame"))
    (:file "_package_YOLOLastFrame" :depends-on ("_package"))
  ))