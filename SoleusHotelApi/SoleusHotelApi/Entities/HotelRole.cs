using Microsoft.AspNetCore.Identity;

namespace SoleusHotelApi.Entities
{
    public class HotelRole : IdentityRole<int>
    {
        public ICollection<HotelUserRole> HotelUserRoles { get; set; }
    }
}
