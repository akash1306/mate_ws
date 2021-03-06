// Generated by gencpp from file misc/intarray.msg
// DO NOT EDIT!


#ifndef MISC_MESSAGE_INTARRAY_H
#define MISC_MESSAGE_INTARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace misc
{
template <class ContainerAllocator>
struct intarray_
{
  typedef intarray_<ContainerAllocator> Type;

  intarray_()
    : data()  {
    }
  intarray_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::misc::intarray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::misc::intarray_<ContainerAllocator> const> ConstPtr;

}; // struct intarray_

typedef ::misc::intarray_<std::allocator<void> > intarray;

typedef boost::shared_ptr< ::misc::intarray > intarrayPtr;
typedef boost::shared_ptr< ::misc::intarray const> intarrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::misc::intarray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::misc::intarray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::misc::intarray_<ContainerAllocator1> & lhs, const ::misc::intarray_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::misc::intarray_<ContainerAllocator1> & lhs, const ::misc::intarray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace misc

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::misc::intarray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::misc::intarray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::misc::intarray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::misc::intarray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::misc::intarray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::misc::intarray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::misc::intarray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "563b27884d008b0d2adff54dc1f9e4f5";
  }

  static const char* value(const ::misc::intarray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x563b27884d008b0dULL;
  static const uint64_t static_value2 = 0x2adff54dc1f9e4f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::misc::intarray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "misc/intarray";
  }

  static const char* value(const ::misc::intarray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::misc::intarray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[] data\n"
;
  }

  static const char* value(const ::misc::intarray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::misc::intarray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct intarray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::misc::intarray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::misc::intarray_<ContainerAllocator>& v)
  {
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MISC_MESSAGE_INTARRAY_H
