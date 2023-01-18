﻿using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Constants;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Services
{
    public class AdminService : IAdminService
    {
        private readonly UserManager<HotelUser> _userManager;
        private readonly RoleManager<HotelRole> _roleManager;
        private readonly IRoomRepository _roomRepository;
        private readonly IConfiguration _configuration;

        public AdminService(UserManager<HotelUser> userManager, RoleManager<HotelRole> roleManager, IRoomRepository roomRepository , IConfiguration configuration)
        {
            _userManager = userManager;
            _roleManager = roleManager;
            _roomRepository = roomRepository;
            _configuration = configuration;
        }

        public async Task<ServiceResponse<string>> InitialSetup()
        {
            ServiceResponse<string> response = new();

            if (await _userManager.Users.AnyAsync(x => x.Room.RoomNumber == _configuration["SuperUser:RoomNumber"]))
            {
                response.Errors.Add("Your setup had been already done before");
                return response;
            }

            List<string> rolesList = new() { Roles.Admin, Roles.Housekeeping, Roles.Maintenance, Roles.Reception, Roles.Guest };

            foreach (var role in rolesList)
            {
                if (!await _roleManager.RoleExistsAsync(role))
                {
                    HotelRole newRole = new();
                    newRole.Name = role;
                    await _roleManager.CreateAsync(newRole);
                }
            }

            Room superUserRoom = new()
            {
                RoomNumber = _configuration["SuperUser:RoomNumber"],
                CheckInDate = DateTime.Now,
                CheckOutDate = DateTime.Now.AddYears(100)
            };

            await _roomRepository.AddRoom(superUserRoom);

            HotelUser superUser = new()
            {
                Room = superUserRoom,
                GuestName = _configuration["SuperUser:RoomNumber"],
                UserName = _configuration["SuperUser:RoomNumber"]
            };

            superUserRoom.UserId = superUser.Id;

            string superUserPass = _configuration["SuperUser:Password"];

            IdentityResult result = await _userManager.CreateAsync(superUser, superUserPass);

            if (result.Succeeded)
            {
                _ = await _userManager.AddToRoleAsync(superUser, Roles.Admin);
            }

            await _roomRepository.SaveAllAsync();

            response.IsValid = true;            
            response.Data = "Your setup has been completed";
            return response;
        }
    }
}
