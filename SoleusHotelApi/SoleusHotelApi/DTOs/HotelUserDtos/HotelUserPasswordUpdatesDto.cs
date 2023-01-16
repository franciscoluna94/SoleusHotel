using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.DTOs.HotelUserDtos
{
    public class HotelUserPasswordUpdatesDto : LoginHotelUserDto
    {
        [Required]
        public string GuestName { get; set; }
    }
}
