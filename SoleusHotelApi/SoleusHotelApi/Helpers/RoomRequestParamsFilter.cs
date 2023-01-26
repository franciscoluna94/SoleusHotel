using SoleusHotelApi.Enums;

namespace SoleusHotelApi.Helpers
{
    public class RoomRequestParams : PaginationParams
    {
        public string Room { get; set; }
        public string Department { get; set; }
        public string Topic { get; set; }
        public string Subject { get; set; }
        public DateTime? MinRequestDate { get; set; }
        public DateTime? MaxRequestDate { get; set; }
        public List<int> RequestStatus { get; set; }
        public DateTime? MinDateStart { get; set; }
        public DateTime? MaxDateStart { get; set; }
        public DateTime? MinDateEnd { get; set; }
        public DateTime? MaxDateEnd { get; set; }
        public string AssignedTo { get; set; }

        public string OrderBy { get; set; } = "room";

    }
}
