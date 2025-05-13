; Auto-generated. Do not edit!


(cl:in-package rfans_driver-msg)


;//! \htmlinclude RfansScan.msg.html

(cl:defclass <RfansScan> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (packets
    :reader packets
    :initarg :packets
    :type (cl:vector rfans_driver-msg:Packet)
   :initform (cl:make-array 0 :element-type 'rfans_driver-msg:Packet :initial-element (cl:make-instance 'rfans_driver-msg:Packet))))
)

(cl:defclass RfansScan (<RfansScan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfansScan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfansScan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rfans_driver-msg:<RfansScan> is deprecated: use rfans_driver-msg:RfansScan instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RfansScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfans_driver-msg:header-val is deprecated.  Use rfans_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'packets-val :lambda-list '(m))
(cl:defmethod packets-val ((m <RfansScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfans_driver-msg:packets-val is deprecated.  Use rfans_driver-msg:packets instead.")
  (packets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfansScan>) ostream)
  "Serializes a message object of type '<RfansScan>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'packets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'packets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfansScan>) istream)
  "Deserializes a message object of type '<RfansScan>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'packets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'packets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rfans_driver-msg:Packet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfansScan>)))
  "Returns string type for a message object of type '<RfansScan>"
  "rfans_driver/RfansScan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfansScan)))
  "Returns string type for a message object of type 'RfansScan"
  "rfans_driver/RfansScan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfansScan>)))
  "Returns md5sum for a message object of type '<RfansScan>"
  "c1045344e2dc739d1d1b87c25ef396b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfansScan)))
  "Returns md5sum for a message object of type 'RfansScan"
  "c1045344e2dc739d1d1b87c25ef396b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfansScan>)))
  "Returns full string definition for message of type '<RfansScan>"
  (cl:format cl:nil "Header header~%Packet[] packets~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rfans_driver/Packet~%# one packet msg definition~%time stamp~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfansScan)))
  "Returns full string definition for message of type 'RfansScan"
  (cl:format cl:nil "Header header~%Packet[] packets~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rfans_driver/Packet~%# one packet msg definition~%time stamp~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfansScan>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'packets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfansScan>))
  "Converts a ROS message object to a list"
  (cl:list 'RfansScan
    (cl:cons ':header (header msg))
    (cl:cons ':packets (packets msg))
))
