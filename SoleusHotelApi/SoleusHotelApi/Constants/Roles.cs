using System.Collections.ObjectModel;

namespace SoleusHotelApi.Constants
{
    public static class Roles
    {
        public const string Admin = "Admin";
        public const string Maintenance = "Maintenance";
        public const string Housekeeping = "Housekeeping";
        public const string Reception = "Reception";
        public const string Guest = "Guest";
        public static readonly IList<string> Employee = new ReadOnlyCollection<string>
        (new List<String>
        {
            Admin,
            Maintenance,
            Housekeeping,
            Reception
        });
    }
}
