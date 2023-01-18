using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Extensions;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Controllers
{
    public class HotelUserController : BaseApiController
    {
        private readonly IHotelUserService _hotelUserService;

        public HotelUserController(IHotelUserService hotelUserService)
        {
            _hotelUserService = hotelUserService;
        }

        [AllowAnonymous]
        [HttpPost("login")]
        public async Task<ActionResult<LoggedUserDto>> Login([FromBody] LoginHotelUserDto loginHotelUserDto)
        {
            ServiceResponse<LoggedUserDto> response = await _hotelUserService.LoginHotelUser(loginHotelUserDto);

            if (!response.IsValid)
            {
                return Unauthorized(response.Errors);
            }

            return Ok(response.Data);
        }        

        [Authorize(Policy = "EmployeeLevel")]
        [HttpGet("rooms")]
        public async Task<ActionResult<List<HotelUserWithRequestsDto>>> GetHotelUserWithRequestsNumber()
        {
            ServiceResponse<List<HotelUserWithRequestsDto>> response = await _hotelUserService.GetHotelUserWithRequests();

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [Authorize(Policy = "EmployeeLevel")]
        [HttpGet("{roomNumber}")]
        public async Task<ActionResult<HotelUserDto>> GetHotelUser(string roomNumber)
        {
            ServiceResponse<HotelUserDto> response = await _hotelUserService.GetHotelUser(roomNumber);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [Authorize(Policy = "ReceptionLevel")]
        [HttpPatch("edit-guest")]
        public async Task<ActionResult<HotelUserDto>> EditGuests([FromBody] HotelUserDto editUser)
        {
            ServiceResponse<HotelUserDto> response = await _hotelUserService.EditGuestUser(editUser);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [HttpPatch("forgot-password")]
        public async Task<ActionResult<LoggedUserDto>> UpdateUserPassword([FromBody] HotelUserPasswordUpdatesDto passwordUpdate)
        {
            if (passwordUpdate is null)
            {
                return BadRequest();
            }

            ServiceResponse<LoggedUserDto> response = await _hotelUserService.ForgotPassword(passwordUpdate, User.GetRoomNumber());

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [Authorize(Policy = "ReceptionLevel")]
        [HttpPatch("generate-password/{roomNumber}")]
        public async Task<ActionResult<GenerateHotelUserPasswordDto>> GenerateUserPassword(string roomNumber)
        {            
            ServiceResponse<GenerateHotelUserPasswordDto> response = await _hotelUserService.GenerateUserPassword(roomNumber);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }
    }
}
