using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.Entities
{
    public class EndedRoomRequest
    {
        public int Id { get; set; }
        [Required]
        public HotelUser Room { get; set; }
        [Required]
        public string Department { get; set; }
        [Required]
        public string Topic { get; set; }
        [Required]
        [StringLength(40)]
        public string Subject { get; set; }
        [StringLength(280)]
        public string Description { get; set; }
        [Required]
        public DateTime RequestDate { get; set; }
        [Required]
        public DateTime DateStart { get; set; }
        [Required]
        public DateTime DateEnd { get; set; }
        [Required]
        public TimeSpan Duration { get; set; }
        public ICollection<Photo> Photos { get; set; }
    }
}
