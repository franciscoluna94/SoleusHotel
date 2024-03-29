﻿using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.DTOs.HotelUserDtos
{
    public class EditHotelUserDto
    {
        [Required]
        public string RoomNumber { get; set; }
        [StringLength(40)]
        public string GuestName { get; set; }
        public List<string> Roles { get; set; }
        [Required]
        public DateTime CheckInDate { get; set; }
        [Required]
        public DateTime CheckOutDate { get; set; }
        public string Password { get; set; }
    }
}
