;; Auto-generated. Do not edit!


(when (boundp 'rfans_driver::Packet)
  (if (not (find-package "RFANS_DRIVER"))
    (make-package "RFANS_DRIVER"))
  (shadow 'Packet (find-package "RFANS_DRIVER")))
(unless (find-package "RFANS_DRIVER::PACKET")
  (make-package "RFANS_DRIVER::PACKET"))

(in-package "ROS")
;;//! \htmlinclude Packet.msg.html


(defclass rfans_driver::Packet
  :super ros::object
  :slots (_stamp _data ))

(defmethod rfans_driver::Packet
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get rfans_driver::Packet :md5sum-) "30d6e0c1226a788b1f0f869ab72b4074")
(setf (get rfans_driver::Packet :datatype-) "rfans_driver/Packet")
(setf (get rfans_driver::Packet :definition-)
      "# one packet msg definition
time stamp
uint8[] data

")



(provide :rfans_driver/Packet "30d6e0c1226a788b1f0f869ab72b4074")


