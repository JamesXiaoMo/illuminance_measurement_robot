;; Auto-generated. Do not edit!


(when (boundp 'rfans_driver::RfansPacket)
  (if (not (find-package "RFANS_DRIVER"))
    (make-package "RFANS_DRIVER"))
  (shadow 'RfansPacket (find-package "RFANS_DRIVER")))
(unless (find-package "RFANS_DRIVER::RFANSPACKET")
  (make-package "RFANS_DRIVER::RFANSPACKET"))

(in-package "ROS")
;;//! \htmlinclude RfansPacket.msg.html


(defclass rfans_driver::RfansPacket
  :super ros::object
  :slots (_stamp _udpCount _udpSize _data ))

(defmethod rfans_driver::RfansPacket
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:udpCount __udpCount) 0)
    ((:udpSize __udpSize) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _udpCount (round __udpCount))
   (setq _udpSize (round __udpSize))
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:udpCount
   (&optional __udpCount)
   (if __udpCount (setq _udpCount __udpCount)) _udpCount)
  (:udpSize
   (&optional __udpSize)
   (if __udpSize (setq _udpSize __udpSize)) _udpSize)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _udpCount
    4
    ;; uint32 _udpSize
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _udpCount
       (write-long _udpCount s)
     ;; uint32 _udpSize
       (write-long _udpSize s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _udpCount
     (setq _udpCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _udpSize
     (setq _udpSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get rfans_driver::RfansPacket :md5sum-) "286ca481769f47d50a9a59b4e0d0d156")
(setf (get rfans_driver::RfansPacket :datatype-) "rfans_driver/RfansPacket")
(setf (get rfans_driver::RfansPacket :definition-)
      "# Raw Rfans LIDAR packet.
#Header        header         # standard ROS message header
time stamp              # packet timestamp
uint32 udpCount          # packet number
uint32 udpSize
uint8[] data      # packet contents 600 Block

")



(provide :rfans_driver/RfansPacket "286ca481769f47d50a9a59b4e0d0d156")


