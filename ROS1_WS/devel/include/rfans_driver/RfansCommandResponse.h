// Generated by gencpp from file rfans_driver/RfansCommandResponse.msg
// DO NOT EDIT!


#ifndef RFANS_DRIVER_MESSAGE_RFANSCOMMANDRESPONSE_H
#define RFANS_DRIVER_MESSAGE_RFANSCOMMANDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rfans_driver
{
template <class ContainerAllocator>
struct RfansCommandResponse_
{
  typedef RfansCommandResponse_<ContainerAllocator> Type;

  RfansCommandResponse_()
    : status(0)  {
    }
  RfansCommandResponse_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RfansCommandResponse_

typedef ::rfans_driver::RfansCommandResponse_<std::allocator<void> > RfansCommandResponse;

typedef boost::shared_ptr< ::rfans_driver::RfansCommandResponse > RfansCommandResponsePtr;
typedef boost::shared_ptr< ::rfans_driver::RfansCommandResponse const> RfansCommandResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rfans_driver::RfansCommandResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rfans_driver::RfansCommandResponse_<ContainerAllocator1> & lhs, const ::rfans_driver::RfansCommandResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rfans_driver::RfansCommandResponse_<ContainerAllocator1> & lhs, const ::rfans_driver::RfansCommandResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rfans_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86791dcf1de997ec7de5a0de7e4dcfcc";
  }

  static const char* value(const ::rfans_driver::RfansCommandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86791dcf1de997ecULL;
  static const uint64_t static_value2 = 0x7de5a0de7e4dcfccULL;
};

template<class ContainerAllocator>
struct DataType< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rfans_driver/RfansCommandResponse";
  }

  static const char* value(const ::rfans_driver::RfansCommandResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 status\n"
"\n"
;
  }

  static const char* value(const ::rfans_driver::RfansCommandResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RfansCommandResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rfans_driver::RfansCommandResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rfans_driver::RfansCommandResponse_<ContainerAllocator>& v)
  {
    if (false || !indent.empty())
      s << std::endl;
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RFANS_DRIVER_MESSAGE_RFANSCOMMANDRESPONSE_H
