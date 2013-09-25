// MESSAGE VICON_Q15 PACKING

#define MAVLINK_MSG_ID_VICON_Q15 210

typedef struct __mavlink_vicon_q15_t
{
 int16_t thrust; ///< thrust cmd
 int16_t roll; ///< roll cmd
 int16_t pitch; ///< pitch cmd
 int16_t yaw; ///< yaw cmd
 uint16_t pwm; ///< pwm
 uint8_t quad_id; ///< Quad ID
} mavlink_vicon_q15_t;

#define MAVLINK_MSG_ID_VICON_Q15_LEN 11
#define MAVLINK_MSG_ID_210_LEN 11



#define MAVLINK_MESSAGE_INFO_VICON_Q15 { \
	"VICON_Q15", \
	6, \
	{  { "thrust", NULL, MAVLINK_TYPE_INT16_T, 0, 0, offsetof(mavlink_vicon_q15_t, thrust) }, \
         { "roll", NULL, MAVLINK_TYPE_INT16_T, 0, 2, offsetof(mavlink_vicon_q15_t, roll) }, \
         { "pitch", NULL, MAVLINK_TYPE_INT16_T, 0, 4, offsetof(mavlink_vicon_q15_t, pitch) }, \
         { "yaw", NULL, MAVLINK_TYPE_INT16_T, 0, 6, offsetof(mavlink_vicon_q15_t, yaw) }, \
         { "pwm", NULL, MAVLINK_TYPE_UINT16_T, 0, 8, offsetof(mavlink_vicon_q15_t, pwm) }, \
         { "quad_id", NULL, MAVLINK_TYPE_UINT8_T, 0, 10, offsetof(mavlink_vicon_q15_t, quad_id) }, \
         } \
}


/**
 * @brief Pack a vicon_q15 message
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 *
 * @param quad_id Quad ID
 * @param thrust thrust cmd
 * @param roll roll cmd
 * @param pitch pitch cmd
 * @param yaw yaw cmd
 * @param pwm pwm
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_vicon_q15_pack(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg,
						       uint8_t quad_id, int16_t thrust, int16_t roll, int16_t pitch, int16_t yaw, uint16_t pwm)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[11];
	_mav_put_int16_t(buf, 0, thrust);
	_mav_put_int16_t(buf, 2, roll);
	_mav_put_int16_t(buf, 4, pitch);
	_mav_put_int16_t(buf, 6, yaw);
	_mav_put_uint16_t(buf, 8, pwm);
	_mav_put_uint8_t(buf, 10, quad_id);

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, 11);
#else
	mavlink_vicon_q15_t packet;
	packet.thrust = thrust;
	packet.roll = roll;
	packet.pitch = pitch;
	packet.yaw = yaw;
	packet.pwm = pwm;
	packet.quad_id = quad_id;

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, 11);
#endif

	msg->msgid = MAVLINK_MSG_ID_VICON_Q15;
	return mavlink_finalize_message(msg, system_id, component_id, 11, 67);
}

/**
 * @brief Pack a vicon_q15 message on a channel
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param chan The MAVLink channel this message was sent over
 * @param msg The MAVLink message to compress the data into
 * @param quad_id Quad ID
 * @param thrust thrust cmd
 * @param roll roll cmd
 * @param pitch pitch cmd
 * @param yaw yaw cmd
 * @param pwm pwm
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_vicon_q15_pack_chan(uint8_t system_id, uint8_t component_id, uint8_t chan,
							   mavlink_message_t* msg,
						           uint8_t quad_id,int16_t thrust,int16_t roll,int16_t pitch,int16_t yaw,uint16_t pwm)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[11];
	_mav_put_int16_t(buf, 0, thrust);
	_mav_put_int16_t(buf, 2, roll);
	_mav_put_int16_t(buf, 4, pitch);
	_mav_put_int16_t(buf, 6, yaw);
	_mav_put_uint16_t(buf, 8, pwm);
	_mav_put_uint8_t(buf, 10, quad_id);

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, 11);
#else
	mavlink_vicon_q15_t packet;
	packet.thrust = thrust;
	packet.roll = roll;
	packet.pitch = pitch;
	packet.yaw = yaw;
	packet.pwm = pwm;
	packet.quad_id = quad_id;

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, 11);
#endif

	msg->msgid = MAVLINK_MSG_ID_VICON_Q15;
	return mavlink_finalize_message_chan(msg, system_id, component_id, chan, 11, 67);
}

/**
 * @brief Encode a vicon_q15 struct into a message
 *
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 * @param vicon_q15 C-struct to read the message contents from
 */
static inline uint16_t mavlink_msg_vicon_q15_encode(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg, const mavlink_vicon_q15_t* vicon_q15)
{
	return mavlink_msg_vicon_q15_pack(system_id, component_id, msg, vicon_q15->quad_id, vicon_q15->thrust, vicon_q15->roll, vicon_q15->pitch, vicon_q15->yaw, vicon_q15->pwm);
}

/**
 * @brief Send a vicon_q15 message
 * @param chan MAVLink channel to send the message
 *
 * @param quad_id Quad ID
 * @param thrust thrust cmd
 * @param roll roll cmd
 * @param pitch pitch cmd
 * @param yaw yaw cmd
 * @param pwm pwm
 */
#ifdef MAVLINK_USE_CONVENIENCE_FUNCTIONS

static inline void mavlink_msg_vicon_q15_send(mavlink_channel_t chan, uint8_t quad_id, int16_t thrust, int16_t roll, int16_t pitch, int16_t yaw, uint16_t pwm)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[11];
	_mav_put_int16_t(buf, 0, thrust);
	_mav_put_int16_t(buf, 2, roll);
	_mav_put_int16_t(buf, 4, pitch);
	_mav_put_int16_t(buf, 6, yaw);
	_mav_put_uint16_t(buf, 8, pwm);
	_mav_put_uint8_t(buf, 10, quad_id);

	_mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_VICON_Q15, buf, 11, 67);
#else
	mavlink_vicon_q15_t packet;
	packet.thrust = thrust;
	packet.roll = roll;
	packet.pitch = pitch;
	packet.yaw = yaw;
	packet.pwm = pwm;
	packet.quad_id = quad_id;

	_mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_VICON_Q15, (const char *)&packet, 11, 67);
#endif
}

#endif

// MESSAGE VICON_Q15 UNPACKING


/**
 * @brief Get field quad_id from vicon_q15 message
 *
 * @return Quad ID
 */
static inline uint8_t mavlink_msg_vicon_q15_get_quad_id(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  10);
}

/**
 * @brief Get field thrust from vicon_q15 message
 *
 * @return thrust cmd
 */
static inline int16_t mavlink_msg_vicon_q15_get_thrust(const mavlink_message_t* msg)
{
	return _MAV_RETURN_int16_t(msg,  0);
}

/**
 * @brief Get field roll from vicon_q15 message
 *
 * @return roll cmd
 */
static inline int16_t mavlink_msg_vicon_q15_get_roll(const mavlink_message_t* msg)
{
	return _MAV_RETURN_int16_t(msg,  2);
}

/**
 * @brief Get field pitch from vicon_q15 message
 *
 * @return pitch cmd
 */
static inline int16_t mavlink_msg_vicon_q15_get_pitch(const mavlink_message_t* msg)
{
	return _MAV_RETURN_int16_t(msg,  4);
}

/**
 * @brief Get field yaw from vicon_q15 message
 *
 * @return yaw cmd
 */
static inline int16_t mavlink_msg_vicon_q15_get_yaw(const mavlink_message_t* msg)
{
	return _MAV_RETURN_int16_t(msg,  6);
}

/**
 * @brief Get field pwm from vicon_q15 message
 *
 * @return pwm
 */
static inline uint16_t mavlink_msg_vicon_q15_get_pwm(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint16_t(msg,  8);
}

/**
 * @brief Decode a vicon_q15 message into a struct
 *
 * @param msg The message to decode
 * @param vicon_q15 C-struct to decode the message contents into
 */
static inline void mavlink_msg_vicon_q15_decode(const mavlink_message_t* msg, mavlink_vicon_q15_t* vicon_q15)
{
#if MAVLINK_NEED_BYTE_SWAP
	vicon_q15->thrust = mavlink_msg_vicon_q15_get_thrust(msg);
	vicon_q15->roll = mavlink_msg_vicon_q15_get_roll(msg);
	vicon_q15->pitch = mavlink_msg_vicon_q15_get_pitch(msg);
	vicon_q15->yaw = mavlink_msg_vicon_q15_get_yaw(msg);
	vicon_q15->pwm = mavlink_msg_vicon_q15_get_pwm(msg);
	vicon_q15->quad_id = mavlink_msg_vicon_q15_get_quad_id(msg);
#else
	memcpy(vicon_q15, _MAV_PAYLOAD(msg), 11);
#endif
}
