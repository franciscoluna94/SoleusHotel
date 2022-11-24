using Microsoft.AspNetCore.Identity;

namespace SoleusHotelApi.Entities
{
    public class HotelUserRole : IdentityUserRole<int>
    {
        public HotelUser HotelUser { get; set; }
        public HotelRole Role { get; set; }
    }
}
