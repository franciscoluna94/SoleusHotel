using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Controllers
{
    [Authorize(Policy = "AdminLevel")]
    public class AdminController : BaseApiController
    {
        private readonly IHotelUserService _hotelUserService;
        private readonly IAdminService _adminService;

        public AdminController(IHotelUserService hotelUserService, IAdminService adminService)
        {
            _hotelUserService = hotelUserService;
            _adminService = adminService;
        }

        [HttpGet("users")]
        public async Task<ActionResult<List<HotelUserWithRolesDto>>> GetHotelUsers()
        {
            ServiceResponse<List<HotelUserWithRolesDto>> response = await _hotelUserService.GetHotelUsers();

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [HttpGet("users/{roomNumber}")]
        public async Task<ActionResult<HotelUserWithRolesDto>> GetHotelUsers(string roomNumber)
        {
            ServiceResponse<HotelUserWithRolesDto> response = await _hotelUserService.GetHotelUserWithRoles(roomNumber);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [HttpPost("create-user")]
        public async Task<ActionResult<CreatedHotelUserDto>> CreateUser([FromBody] CreateHotelUserDto createHotelUserDto)
        {
            ServiceResponse<CreatedHotelUserDto> response = await _hotelUserService.CreateHotelUser(createHotelUserDto);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [HttpPut("edit-user")]
        public async Task<ActionResult<CreatedHotelUserDto>> EditUser([FromBody] CreateHotelUserDto editHotelUser)
        {
            ServiceResponse<CreatedHotelUserDto> response = await _hotelUserService.EditUser(editHotelUser);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [HttpPost("reset-passwords")]
        public async Task<ActionResult> ResetGuestPasswords([FromBody] string password)
        {
            ServiceResponse<bool> response = await _hotelUserService.ResetGuestsPasswords(password);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return NoContent();
        }

        [HttpDelete("remove-user/{roomNumber}")]
        public async Task<ActionResult> DeleteUser(string roomNumber)
        {
            ServiceResponse<bool> response = await _hotelUserService.DeleteHotelUser(roomNumber);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok();
        }        

        [HttpGet("users-roles")]
        public async Task<ActionResult<List<HotelRoleDto>>> GetUsersWithRoles()
        {
            ServiceResponse<List<HotelRoleDto>> response = await _hotelUserService.GetUsersWithRolesAsync();

            return Ok(response.Data);
        }

        [AllowAnonymous]
        [HttpGet("initial-setup")]
        public async Task<ActionResult<string>> InitialSetup()
        {
            ServiceResponse<string> response = await _adminService.InitialSetup();

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }
    }


}
