; Auto-generated. Do not edit!


(cl:in-package rfans_driver-msg)


;//! \htmlinclude RfansPacket.msg.html

(cl:defclass <RfansPacket> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (udpCount
    :reader udpCount
    :initarg :udpCount
    :type cl:integer
    :initform 0)
   (udpSize
    :reader udpSize
    :initarg :udpSize
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass RfansPacket (<RfansPacket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfansPacket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfansPacket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rfans_driver-msg:<RfansPacket> is deprecated: use rfans_driver-msg:RfansPacket instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <RfansPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfans_driver-msg:stamp-val is deprecated.  Use rfans_driver-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'udpCount-val :lambda-list '(m))
(cl:defmethod udpCount-val ((m <RfansPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfans_driver-msg:udpCount-val is deprecated.  Use rfans_driver-msg:udpCount instead.")
  (udpCount m))

(cl:ensure-generic-function 'udpSize-val :lambda-list '(m))
(cl:defmethod udpSize-val ((m <RfansPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfans_driver-msg:udpSize-val is deprecated.  Use rfans_driver-msg:udpSize instead.")
  (udpSize m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RfansPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfans_driver-msg:data-val is deprecated.  Use rfans_driver-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfansPacket>) ostream)
  "Serializes a message object of type '<RfansPacket>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'udpCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'udpCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'udpSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'udpSize)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfansPacket>) istream)
  "Deserializes a message object of type '<RfansPacket>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'udpCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'udpCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'udpSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'udpSize)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfansPacket>)))
  "Returns string type for a message object of type '<RfansPacket>"
  "rfans_driver/RfansPacket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfansPacket)))
  "Returns string type for a message object of type 'RfansPacket"
  "rfans_driver/RfansPacket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfansPacket>)))
  "Returns md5sum for a message object of type '<RfansPacket>"
  "286ca481769f47d50a9a59b4e0d0d156")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfansPacket)))
  "Returns md5sum for a message object of type 'RfansPacket"
  "286ca481769f47d50a9a59b4e0d0d156")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfansPacket>)))
  "Returns full string definition for message of type '<RfansPacket>"
  (cl:format cl:nil "# Raw Rfans LIDAR packet.~%#Header        header         # standard ROS message header~%time stamp              # packet timestamp~%uint32 udpCount          # packet number~%uint32 udpSize~%uint8[] data      # packet contents 600 Block~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfansPacket)))
  "Returns full string definition for message of type 'RfansPacket"
  (cl:format cl:nil "# Raw Rfans LIDAR packet.~%#Header        header         # standard ROS message header~%time stamp              # packet timestamp~%uint32 udpCount          # packet number~%uint32 udpSize~%uint8[] data      # packet contents 600 Block~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfansPacket>))
  (cl:+ 0
     8
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfansPacket>))
  "Converts a ROS message object to a list"
  (cl:list 'RfansPacket
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':udpCount (udpCount msg))
    (cl:cons ':udpSize (udpSize msg))
    (cl:cons ':data (data msg))
))
