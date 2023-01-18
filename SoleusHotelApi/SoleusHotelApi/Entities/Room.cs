using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.Entities
{
    public class Room
    {
        public int Id { get; set; } 
        [Required]
        public string RoomNumber { get; set; }     
        public DateTime CheckInDate { get; set; }
        public DateTime CheckOutDate { get; set; }
        public ICollection<RoomRequest> RoomRequests { get; set; }
        public int? UserId { get; set; }
        public HotelUser User { get; set; }
    }
}
