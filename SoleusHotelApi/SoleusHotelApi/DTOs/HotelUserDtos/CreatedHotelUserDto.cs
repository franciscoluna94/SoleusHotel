﻿namespace SoleusHotelApi.DTOs.HotelUserDtos
{
    public class CreatedHotelUserDto
    {
        public string RoomNumber { get; set; }
        public string GuestName { get; set; }
        public ICollection<string> UserRoles { get; set; }
    }
}
