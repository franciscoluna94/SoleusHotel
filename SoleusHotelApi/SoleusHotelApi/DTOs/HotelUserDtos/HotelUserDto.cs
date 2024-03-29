﻿using SoleusHotelApi.Entities;

namespace SoleusHotelApi.DTOs.HotelUserDtos
{
    public class HotelUserDto
    {
        public string RoomNumber { get; set; }
        public string GuestName { get; set; }
        public DateTime CheckInDate { get; set; }
        public DateTime CheckOutDate { get; set; }
    }
}
