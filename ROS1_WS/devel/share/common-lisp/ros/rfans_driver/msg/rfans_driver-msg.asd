
(cl:in-package :asdf)

(defsystem "rfans_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Packet" :depends-on ("_package_Packet"))
    (:file "_package_Packet" :depends-on ("_package"))
    (:file "RfansPacket" :depends-on ("_package_RfansPacket"))
    (:file "_package_RfansPacket" :depends-on ("_package"))
    (:file "RfansScan" :depends-on ("_package_RfansScan"))
    (:file "_package_RfansScan" :depends-on ("_package"))
  ))