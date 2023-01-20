namespace SoleusHotelApi.Helpers
{
    public class HotelUserParams : PaginationParams
    {
        public string OrderBy { get; set; } = "room";
    }
}
