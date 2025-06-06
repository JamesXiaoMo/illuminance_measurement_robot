# generated from rosidl_generator_py/resource/_idl.py.em
# with input from power_measurement:msg/Ina228Sensor.idl
# generated code does not contain a copyright notice


# Import statements for member types

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_Ina228Sensor(type):
    """Metaclass of message 'Ina228Sensor'."""

    _CREATE_ROS_MESSAGE = None
    _CONVERT_FROM_PY = None
    _CONVERT_TO_PY = None
    _DESTROY_ROS_MESSAGE = None
    _TYPE_SUPPORT = None

    __constants = {
    }

    @classmethod
    def __import_type_support__(cls):
        try:
            from rosidl_generator_py import import_type_support
            module = import_type_support('power_measurement')
        except ImportError:
            import logging
            import traceback
            logger = logging.getLogger(
                'power_measurement.msg.Ina228Sensor')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__msg__ina228_sensor
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__msg__ina228_sensor
            cls._CONVERT_TO_PY = module.convert_to_py_msg__msg__ina228_sensor
            cls._TYPE_SUPPORT = module.type_support_msg__msg__ina228_sensor
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__msg__ina228_sensor

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class Ina228Sensor(metaclass=Metaclass_Ina228Sensor):
    """Message class 'Ina228Sensor'."""

    __slots__ = [
        '_voltage',
        '_current',
        '_power',
    ]

    _fields_and_field_types = {
        'voltage': 'double',
        'current': 'double',
        'power': 'double',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        self.voltage = kwargs.get('voltage', float())
        self.current = kwargs.get('current', float())
        self.power = kwargs.get('power', float())

    def __repr__(self):
        typename = self.__class__.__module__.split('.')
        typename.pop()
        typename.append(self.__class__.__name__)
        args = []
        for s, t in zip(self.__slots__, self.SLOT_TYPES):
            field = getattr(self, s)
            fieldstr = repr(field)
            # We use Python array type for fields that can be directly stored
            # in them, and "normal" sequences for everything else.  If it is
            # a type that we store in an array, strip off the 'array' portion.
            if (
                isinstance(t, rosidl_parser.definition.AbstractSequence) and
                isinstance(t.value_type, rosidl_parser.definition.BasicType) and
                t.value_type.typename in ['float', 'double', 'int8', 'uint8', 'int16', 'uint16', 'int32', 'uint32', 'int64', 'uint64']
            ):
                if len(field) == 0:
                    fieldstr = '[]'
                else:
                    assert fieldstr.startswith('array(')
                    prefix = "array('X', "
                    suffix = ')'
                    fieldstr = fieldstr[len(prefix):-len(suffix)]
            args.append(s[1:] + '=' + fieldstr)
        return '%s(%s)' % ('.'.join(typename), ', '.join(args))

    def __eq__(self, other):
        if not isinstance(other, self.__class__):
            return False
        if self.voltage != other.voltage:
            return False
        if self.current != other.current:
            return False
        if self.power != other.power:
            return False
        return True

    @classmethod
    def get_fields_and_field_types(cls):
        from copy import copy
        return copy(cls._fields_and_field_types)

    @property
    def voltage(self):
        """Message field 'voltage'."""
        return self._voltage

    @voltage.setter
    def voltage(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'voltage' field must be of type 'float'"
        self._voltage = value

    @property
    def current(self):
        """Message field 'current'."""
        return self._current

    @current.setter
    def current(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'current' field must be of type 'float'"
        self._current = value

    @property
    def power(self):
        """Message field 'power'."""
        return self._power

    @power.setter
    def power(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'power' field must be of type 'float'"
        self._power = value
