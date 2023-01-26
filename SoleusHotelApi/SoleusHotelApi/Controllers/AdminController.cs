using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SoleusHotelApi.Constants.SwaggerDescriptions;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Extensions;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;
using Swashbuckle.AspNetCore.Annotations;
using System.Net;

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

        [HttpPost("users")]
        [SwaggerResponse(StatusCodes.Status200OK, AdminControllerDescriptions.CreateUser200Ok, typeof(CreatedHotelUserDto))]
        [SwaggerResponse(StatusCodes.Status409Conflict, AdminControllerDescriptions.CreateUser409Conflict)]
        public async Task<ActionResult<CreatedHotelUserDto>> CreateUser([FromBody] CreateHotelUserDto createHotelUserDto)
        {
            ServiceResponse<CreatedHotelUserDto> serviceResponse = await _hotelUserService.CreateHotelUser(createHotelUserDto);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }

        [HttpGet("users")]
        [SwaggerResponse(StatusCodes.Status200OK, AdminControllerDescriptions.GetHotelUsers200Ok, typeof(PagedList<HotelUserWithRolesDto>))]
        public async Task<ActionResult<PagedList<HotelUserWithRolesDto>>> GetHotelUsers([FromQuery] HotelUserParams hotelUserParams1)
        {
            ServiceResponse<PagedList<HotelUserWithRolesDto>> serviceResponse = await _hotelUserService.GetHotelUsers(hotelUserParams1);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            Response.AddPaginationHeader(serviceResponse.Data.CurrentPage, serviceResponse.Data.PageSize,
                serviceResponse.Data.TotalCount, serviceResponse.Data.TotalPages);

            return Ok(serviceResponse.Data);
        }

        [HttpGet("users/{roomNumber}")]
        [SwaggerResponse(StatusCodes.Status200OK, AdminControllerDescriptions.GetHotelUser200Ok, typeof(HotelUserWithRolesDto))]
        [SwaggerResponse(StatusCodes.Status400BadRequest, AdminControllerDescriptions.UserNotFound400BadRequest)]
        public async Task<ActionResult<HotelUserWithRolesDto>> GetHotelUser(string roomNumber)
        {
            ServiceResponse<HotelUserWithRolesDto> serviceResponse = await _hotelUserService.GetHotelUserWithRoles(roomNumber);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }

        [HttpPut("users")]
        [SwaggerResponse(StatusCodes.Status200OK, AdminControllerDescriptions.EditHotelUser200Ok, typeof(CreatedHotelUserDto))]
        [SwaggerResponse(StatusCodes.Status400BadRequest, AdminControllerDescriptions.UserNotFound400BadRequest)]
        public async Task<ActionResult<CreatedHotelUserDto>> EditUser([FromBody] CreateHotelUserDto editHotelUser)
        {
            ServiceResponse<CreatedHotelUserDto> serviceResponse = await _hotelUserService.EditUser(editHotelUser);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }

        [HttpPost("passwords")]
        [SwaggerResponse(StatusCodes.Status204NoContent, AdminControllerDescriptions.ResetGuestPasswords204NoContent)]
        public async Task<ActionResult> ResetGuestPasswords([FromBody] string password)
        {
            ServiceResponse<bool> serviceResponse = await _hotelUserService.ResetGuestsPasswords(password);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return NoContent();
        }

        [HttpDelete("users/{roomNumber}")]
        [SwaggerResponse(StatusCodes.Status204NoContent, AdminControllerDescriptions.DeleteUser204NoContent)]
        [SwaggerResponse(StatusCodes.Status400BadRequest, AdminControllerDescriptions.UserNotFound400BadRequest)]
        [SwaggerResponse(StatusCodes.Status409Conflict, AdminControllerDescriptions.DeleteUser409NoContent)]
        public async Task<ActionResult> DeleteUser(string roomNumber)
        {
            ServiceResponse<bool> serviceResponse = await _hotelUserService.DeleteHotelUser(roomNumber);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return NoContent();
        }     

        [AllowAnonymous]
        [HttpGet("initial-setup")]
        [SwaggerResponse(StatusCodes.Status200OK, AdminControllerDescriptions.InitialSetup200Ok)]
        [SwaggerResponse(StatusCodes.Status409Conflict, AdminControllerDescriptions.InitialSetup409Conflict)]
        public async Task<ActionResult<string>> InitialSetup()
        {
            ServiceResponse<string> serviceResponse = await _adminService.InitialSetup();

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }
    }


}
