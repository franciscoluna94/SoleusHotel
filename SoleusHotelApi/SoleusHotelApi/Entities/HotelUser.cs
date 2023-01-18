using Microsoft.AspNetCore.Identity;

namespace SoleusHotelApi.Entities
{
    public class HotelUser : IdentityUser<int>
    {
        public string GuestName { get; set; }        
        public ICollection<RoomRequest> AssignedRoomRequests { get; set; }
        public ICollection<HotelUserRole> UserRoles { get; set; }
        public int? RoomId { get; set; }
        public Room Room { get; set; }

    }
}
