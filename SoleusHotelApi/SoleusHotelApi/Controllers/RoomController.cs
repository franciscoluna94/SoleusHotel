using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SoleusHotelApi.DTOs.Room;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Controllers
{
    [Authorize(Policy = "EmployeeLevel")]
    public class RoomController : BaseApiController
    {
        private readonly IRoomService _roomService;

        public RoomController(IRoomService roomService)
        {
            _roomService = roomService;
        }

        [HttpGet]
        public async Task<ActionResult<List<Room>>> GetRooms()
        {
            ServiceResponse<List<Room>> response = await _roomService.GetRooms();
            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }


    }
}
