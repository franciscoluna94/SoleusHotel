﻿namespace SoleusHotelApi.DTOs.HotelUser
{
    public class HotelUserWithRolesDto
    {
        public string RoomNumber { get; set; }
        public string GuestName { get; set; }
        public DateTime CheckInDate { get; set; }
        public DateTime CheckOutDate { get; set; }
        public ICollection<string> UserRoles { get; set; }
    }
}
