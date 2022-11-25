using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Services
{
    public class AdminService : IAdminService
    {
        private readonly UserManager<HotelUser> _userManager;
        private readonly RoleManager<HotelRole> _roleManager;
        private readonly IConfiguration _configuration;

        public AdminService(UserManager<HotelUser> userManager, RoleManager<HotelRole> roleManager, IConfiguration configuration)
        {
            _userManager = userManager;
            _roleManager = roleManager;
            _configuration = configuration;
        }

        public async Task<ServiceResponse<string>> InitialSetup()
        {
            ServiceResponse<string> response = new();

            if (await _userManager.Users.AnyAsync(x => x.RoomNumber == _configuration["SuperUser:RoomNumber"]))
            {
                response.Errors.Add("Your setup had been already done before");
                return response;
            }

            List<string> rolesList = new() { "Admin", "Housekeeping", "Maintenance", "Reception", "Guest" };

            foreach (var role in rolesList)
            {
                if (!await _roleManager.RoleExistsAsync(role))
                {
                    HotelRole newRole = new();
                    newRole.Name = role;
                    await _roleManager.CreateAsync(newRole);
                }
            }

            HotelUser superUser = new()
            {
                RoomNumber = _configuration["SuperUser:RoomNumber"],
                UserName = _configuration["SuperUser:RoomNumber"],
                CheckInDate = DateTime.Now,
                CheckOutDate = DateTime.Now.AddYears(100)
            };

            string superUserPass = _configuration["SuperUser:Password"];

            IdentityResult result = await _userManager.CreateAsync(superUser, superUserPass);

            if (result.Succeeded)
            {
                _ = await _userManager.AddToRoleAsync(superUser, "Admin");
            }

            response.IsValid = true;
            response.Data = "Your setup has been completed";
            return response;
        }
    }
}
