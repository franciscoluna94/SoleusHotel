using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SoleusHotelApi.DTOs.HotelUser;
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

        [HttpPost("create-user")]
        public async Task<ActionResult<LoggedUserDto>> CreateUser([FromBody] CreateHotelUserDto createHotelUserDto)
        {
            ServiceResponse<LoggedUserDto> response = await _hotelUserService.CreateHotelUser(createHotelUserDto);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [HttpDelete("delete-user/{roomNumber}")]
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
        public async Task<ActionResult<List<HotelUserRoleDto>>> GetUsersWithRoles()
        {
            ServiceResponse<List<HotelUserRoleDto>> response = await _adminService.GetUsersWithRolesAsync();

            return Ok(response.Data);
        }

        [HttpPost("edit-roles/{roomNumber}")]
        public async Task<ActionResult> EditUserRoles(string roomNumber, [FromQuery] string roles)
        {
            ServiceResponse<IList<string>> response = await _adminService.EditUserRoles(roomNumber, roles);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

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
