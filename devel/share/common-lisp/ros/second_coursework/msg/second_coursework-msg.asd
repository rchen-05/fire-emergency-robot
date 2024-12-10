
(cl:in-package :asdf)

(defsystem "second_coursework-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Emergency" :depends-on ("_package_Emergency"))
    (:file "_package_Emergency" :depends-on ("_package"))
    (:file "PatrolAction" :depends-on ("_package_PatrolAction"))
    (:file "_package_PatrolAction" :depends-on ("_package"))
    (:file "PatrolActionFeedback" :depends-on ("_package_PatrolActionFeedback"))
    (:file "_package_PatrolActionFeedback" :depends-on ("_package"))
    (:file "PatrolActionGoal" :depends-on ("_package_PatrolActionGoal"))
    (:file "_package_PatrolActionGoal" :depends-on ("_package"))
    (:file "PatrolActionResult" :depends-on ("_package_PatrolActionResult"))
    (:file "_package_PatrolActionResult" :depends-on ("_package"))
    (:file "PatrolFeedback" :depends-on ("_package_PatrolFeedback"))
    (:file "_package_PatrolFeedback" :depends-on ("_package"))
    (:file "PatrolGoal" :depends-on ("_package_PatrolGoal"))
    (:file "_package_PatrolGoal" :depends-on ("_package"))
    (:file "PatrolResult" :depends-on ("_package_PatrolResult"))
    (:file "_package_PatrolResult" :depends-on ("_package"))
    (:file "YOLODetection" :depends-on ("_package_YOLODetection"))
    (:file "_package_YOLODetection" :depends-on ("_package"))
  ))