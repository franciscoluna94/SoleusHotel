using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SoleusHotelApi.Constants.SwaggerDescriptions;
using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Extensions;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;
using Swashbuckle.AspNetCore.Annotations;

namespace SoleusHotelApi.Controllers
{
    public class RoomRequestController : BaseApiController
    {
        private readonly IRoomRequestService _roomRequestService;

        public RoomRequestController(IRoomRequestService roomRequestService)
        {
            _roomRequestService = roomRequestService;
        }

        [HttpPost()]
        [SwaggerResponse(StatusCodes.Status204NoContent)]
        [SwaggerResponse(StatusCodes.Status404NotFound, RoomRequestControllerDescriptions.UserNotFound400BadRequest)]
        public async Task<ActionResult<bool>> CreateRoomRequest([FromBody] CreateRoomRequestDto createRoomRequest)
        {
            ServiceResponse<bool> serviceResponse = await _roomRequestService.CreateRoomRequest(createRoomRequest, User.GetRoomNumber());

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return NoContent();
        }

        [Authorize(Policy = "EmployeeLevel")]
        [HttpGet()]
        [SwaggerResponse(StatusCodes.Status200OK, RoomRequestControllerDescriptions.GetFilteredRoomRequest200Ok, typeof(PagedList<BaseRoomRequestDto>))]
        public async Task<ActionResult<PagedList<BaseRoomRequestDto>>> GetFilteredRoomRequests([FromQuery] RoomRequestParams roomRequestParams)
        {
            ServiceResponse<PagedList<BaseRoomRequestDto>> serviceResponse = await _roomRequestService.GetFilteredRoomRequests(roomRequestParams);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            Response.AddPaginationHeader(serviceResponse.Data.CurrentPage, serviceResponse.Data.PageSize,
               serviceResponse.Data.TotalCount, serviceResponse.Data.TotalPages);

            return Ok(serviceResponse.Data);
        }

        [HttpGet("own")]
        [SwaggerResponse(StatusCodes.Status200OK, RoomRequestControllerDescriptions.GetMyRoomRequests200Ok, typeof(PagedList<BaseRoomRequestDto>))]
        [SwaggerResponse(StatusCodes.Status404NotFound, RoomRequestControllerDescriptions.UserNotFound400BadRequest)]
        public async Task<ActionResult<PagedList<BaseRoomRequestDto>>> GetMyRoomRequests([FromQuery] RoomRequestParams roomRequestParams)
        {
            ServiceResponse<PagedList<BaseRoomRequestDto>> serviceResponse = await _roomRequestService.GetMyRoomRequests(User.GetRoomNumber(), roomRequestParams);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            Response.AddPaginationHeader(serviceResponse.Data.CurrentPage, serviceResponse.Data.PageSize,
               serviceResponse.Data.TotalCount, serviceResponse.Data.TotalPages);

            return Ok(serviceResponse.Data);
        }

        [Authorize(Policy = "EmployeeLevel")]
        [HttpGet("employee")]
        [SwaggerResponse(StatusCodes.Status200OK, RoomRequestControllerDescriptions.GetAssignedRoomRequests200Ok, typeof(PagedList<BaseRoomRequestDto>))]
        [SwaggerResponse(StatusCodes.Status404NotFound, RoomRequestControllerDescriptions.UserNotFound400BadRequest)]
        public async Task<ActionResult<PagedList<BaseRoomRequestDto>>> GetAssignedRoomRequests([FromQuery] RoomRequestParams roomRequestParams)
        {
            ServiceResponse<PagedList<BaseRoomRequestDto>> serviceResponse = 
                await _roomRequestService.GetMyAssignedRequests(User.GetRoomNumber(), roomRequestParams);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            Response.AddPaginationHeader(serviceResponse.Data.CurrentPage, serviceResponse.Data.PageSize,
               serviceResponse.Data.TotalCount, serviceResponse.Data.TotalPages);

            return Ok(serviceResponse.Data);
        }

        [HttpGet("{roomRequestId}")]
        [SwaggerResponse(StatusCodes.Status200OK, RoomRequestControllerDescriptions.GetRoomRequest200Ok, typeof(RoomRequestDto))]
        [SwaggerResponse(StatusCodes.Status403Forbidden, RoomRequestControllerDescriptions.GetRoomRequest403Forbidden)]
        [SwaggerResponse(StatusCodes.Status404NotFound, RoomRequestControllerDescriptions.UserOrRoomRequestNotFound404BadRequest)]
        public async Task<ActionResult<RoomRequestDto>> GetRoomRequest(int roomRequestId)
        {
            ServiceResponse<RoomRequestDto> serviceResponse = await _roomRequestService.GetRoomRequest(roomRequestId, User.GetRoomNumber() , User.GetRoles());

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }

        [Authorize(Policy = "EmployeeLevel")]
        [HttpGet("average")]
        [SwaggerResponse(StatusCodes.Status200OK, RoomRequestControllerDescriptions.EndedRoomRequestsAverageDuration200Ok, typeof(TimeSpan))]
        [SwaggerResponse(StatusCodes.Status404NotFound, RoomRequestControllerDescriptions.UserOrRoomRequestNotFound404BadRequest)]
        public async Task<ActionResult<long>> EndedRoomRequestsAverageDuration()
        {
            ServiceResponse<long> serviceResponse = await _roomRequestService.AverageTimeAssignedRoomRequests(User.GetRoomNumber());

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }

        [Authorize(Policy = "EmployeeLevel")]
        [HttpPatch("{roomRequestId}/start")]
        [SwaggerResponse(StatusCodes.Status204NoContent, RoomRequestControllerDescriptions.StartRoomRequest204NoContent)]
        [SwaggerResponse(StatusCodes.Status403Forbidden, RoomRequestControllerDescriptions.StartRoomRequest403Forbidden)]
        [SwaggerResponse(StatusCodes.Status404NotFound, RoomRequestControllerDescriptions.UserOrRoomRequestNotFound404BadRequest)]
        [SwaggerResponse(StatusCodes.Status409Conflict, RoomRequestControllerDescriptions.StartRoomRequest409Conflict)]
        public async Task<ActionResult> StartRoomRequest(int roomRequestId)
        {
            ServiceResponse<bool> serviceResponse = await _roomRequestService.StartRoomRequest(roomRequestId, User.GetRoomNumber(), User.GetRoles());

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return NoContent();
        }

        [Authorize(Policy = "EmployeeLevel")]
        [HttpPatch("{roomRequestId}/end")]
        [SwaggerResponse(StatusCodes.Status204NoContent, RoomRequestControllerDescriptions.EndRoomRequest204NoContent)]
        [SwaggerResponse(StatusCodes.Status403Forbidden, RoomRequestControllerDescriptions.EndRoomRequest403Forbidden)]
        [SwaggerResponse(StatusCodes.Status404NotFound, RoomRequestControllerDescriptions.UserOrRoomRequestNotFound404BadRequest)]
        [SwaggerResponse(StatusCodes.Status409Conflict, RoomRequestControllerDescriptions.EndRoomRequest409Conflict)]
        public async Task<ActionResult> EndRoomRequest(int roomRequestId)
        {
            ServiceResponse<bool> serviceResponse = await _roomRequestService.EndRoomRequest(roomRequestId, User.GetRoomNumber(), User.GetRoles());

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return NoContent();
        }

        [HttpDelete("{roomRequestId}")]
        [SwaggerResponse(StatusCodes.Status204NoContent, RoomRequestControllerDescriptions.DeleteRoomRequest204NoContent)]
        [SwaggerResponse(StatusCodes.Status403Forbidden, RoomRequestControllerDescriptions.DeleteRoomRequest403Forbidden)]
        [SwaggerResponse(StatusCodes.Status404NotFound, RoomRequestControllerDescriptions.UserOrRoomRequestNotFound404BadRequest)]
        [SwaggerResponse(StatusCodes.Status409Conflict, RoomRequestControllerDescriptions.DeleteRoomRequest409Conflict)]
        public async Task<ActionResult> DeleteRoomRequest(int roomRequestId)
        {
            ServiceResponse<bool> serviceResponse = await _roomRequestService.SafeDeleteRoomRequest(roomRequestId, User.GetRoomNumber(), User.GetRoles());

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return NoContent();
        }
    }
}
