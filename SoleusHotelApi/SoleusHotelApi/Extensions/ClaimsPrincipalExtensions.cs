using System.Security.Claims;

namespace SoleusHotelApi.Extensions
{
    public static class ClaimsPrincipalExtensions
    {
        public static string GetRoomNumber(this ClaimsPrincipal user)
        {
            return user.FindFirst(ClaimTypes.Name)?.Value;
        }

        public static List<string> GetRoles(this ClaimsPrincipal user)
        {
            List<string> roles = new List<string>();

            foreach (var role in user.FindAll(ClaimTypes.Role))
            {
                roles.Add(role.Value);
            }

            return roles;
        }
    }
}
