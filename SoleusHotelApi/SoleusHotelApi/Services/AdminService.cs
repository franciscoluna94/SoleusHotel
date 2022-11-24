using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.DTOs.HotelUser;
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
        private readonly IMapper _mapper;

        public AdminService(UserManager<HotelUser> userManager, RoleManager<HotelRole> roleManager, IConfiguration configuration, IMapper mapper)
        {
            _userManager = userManager;
            _roleManager = roleManager;
            _configuration = configuration;
            _mapper = mapper;
        }

        public async Task<ServiceResponse<List<HotelUserRoleDto>>> GetUsersWithRolesAsync()
        {
            ServiceResponse<List<HotelUserRoleDto>> response = new();

            var users = await _userManager.Users
               .Include(r => r.UserRoles)
               .ThenInclude(r => r.Role)
               .OrderBy(u => u.RoomNumber)
               .Select(u => new HotelUserRoleDto
               {
                   Id = u.Id,
                   RoomNumber = u.RoomNumber,
                   Roles = u.UserRoles.Select(r => r.Role.Name).ToList()
               })
                .ToListAsync();

            response.IsValid = true;
            response.Data = users;

            return response;
        }

        public async Task<ServiceResponse<IList<string>>> EditUserRoles(string roomNumber, string roles)
        {
            ServiceResponse<IList<string>> response = new();

            string[] selectedRoles = roles.Split(",").ToArray();

            HotelUser user = await _userManager.FindByNameAsync(roomNumber);

            if (user is null)
            {
                response.Errors.Add("Unable to find the user");
                return response;
            }

            IList<string> userRoles = await _userManager.GetRolesAsync(user);

            IdentityResult result = await _userManager.AddToRolesAsync(user, selectedRoles.Except(userRoles));

            if (!result.Succeeded)
            {
                response.Errors.Add("Unable to modufy roles");
                return response;
            }

            result = await _userManager.RemoveFromRolesAsync(user, userRoles.Except(selectedRoles));

            if (!result.Succeeded)
            {
                response.Errors.Add("Failed to remove roles");
            }

            response.IsValid = true;
            response.Data = await _userManager.GetRolesAsync(user);
            return response;
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
