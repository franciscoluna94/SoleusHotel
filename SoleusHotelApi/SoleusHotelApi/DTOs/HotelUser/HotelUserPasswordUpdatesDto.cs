using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.DTOs.HotelUser
{
    public class HotelUserPasswordUpdatesDto : LoginHotelUserDto
    {
        [Required]
        public string GuestName { get; set; }
    }
}
