using FluentAssertions;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Moq;
using SoleusHotelApi.Controllers;
using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Services.Contracts;
using SoleusHotelApi.UnitTests.Helpers.Mocks;

namespace SoleusHotelApi.UnitTests.UnitTests.Controllers
{
    public class RoomRequestControllerTests
    {
        private Mock<IRoomRequestService> _mockRoomRequestService;

        public RoomRequestControllerTests()
        {
            _mockRoomRequestService = GetMockedService.GetRoomRequestServiceMock(responseIsValid: true);
        }

        private RoomRequestController CreateRoomRequestController()
        {
            RoomRequestController roomRequestController = new(_mockRoomRequestService.Object);
            roomRequestController.ControllerContext = new ControllerContext();
            roomRequestController.ControllerContext.HttpContext = new DefaultHttpContext();

            return roomRequestController;
        }

        [Fact]
        public async Task CreateRoomRequest_ServiceResponseIsValid_True()
        {
            // Arrange
            var roomRequestController = CreateRoomRequestController();
            CreateRoomRequestDto createRoomRequestDto = new();

            // Act
            ActionResult<bool> result = await roomRequestController.CreateRoomRequest(createRoomRequestDto);

            // Assert
            var resultValue = result.Result as NoContentResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<bool>>();
            resultValue.StatusCode.Should().Be(204);
        }

        [Fact]
        public async Task CreateRoomRequest_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockRoomRequestService = GetMockedService.GetRoomRequestServiceMock(responseIsValid: false);
            var roomRequestController = CreateRoomRequestController();
            CreateRoomRequestDto createRoomRequestDto = new();

            // Act
            ActionResult<bool> result = await roomRequestController.CreateRoomRequest(createRoomRequestDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<bool>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task GetFilteredRoomRequests_ServiceResponseIsValid_True()
        {
            // Arrange
            var roomRequestController = CreateRoomRequestController();
            RoomRequestParams roomRequestParams = new();

            // Act
            ActionResult<PagedList<BaseRoomRequestDto>> result = await roomRequestController.GetFilteredRoomRequests(roomRequestParams);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<PagedList<BaseRoomRequestDto>>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task GetFilteredRoomRequests_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockRoomRequestService = GetMockedService.GetRoomRequestServiceMock(responseIsValid: false);
            var roomRequestController = CreateRoomRequestController();
            RoomRequestParams roomRequestParams = new();

            // Act
            ActionResult<PagedList<BaseRoomRequestDto>> result = await roomRequestController.GetFilteredRoomRequests(roomRequestParams);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<PagedList<BaseRoomRequestDto>>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task GetMyRoomRequests_ServiceResponseIsValid_True()
        {
            // Arrange
            var roomRequestController = CreateRoomRequestController();
            RoomRequestParams roomRequestParams = new();

            // Act
            ActionResult<PagedList<BaseRoomRequestDto>> result = await roomRequestController.GetMyRoomRequests(roomRequestParams);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<PagedList<BaseRoomRequestDto>>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task GetMyRoomRequests_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockRoomRequestService = GetMockedService.GetRoomRequestServiceMock(responseIsValid: false);
            var roomRequestController = CreateRoomRequestController();
            RoomRequestParams roomRequestParams = new();

            // Act
            ActionResult<PagedList<BaseRoomRequestDto>> result = await roomRequestController.GetMyRoomRequests(roomRequestParams);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<PagedList<BaseRoomRequestDto>>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task GetAssignedRoomRequests_ServiceResponseIsValid_True()
        {
            // Arrange
            var roomRequestController = CreateRoomRequestController();
            RoomRequestParams roomRequestParams = new();

            // Act
            ActionResult<PagedList<BaseRoomRequestDto>> result = await roomRequestController.GetAssignedRoomRequests(roomRequestParams);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<PagedList<BaseRoomRequestDto>>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task GetAssignedRoomRequests_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockRoomRequestService = GetMockedService.GetRoomRequestServiceMock(responseIsValid: false);
            var roomRequestController = CreateRoomRequestController();
            RoomRequestParams roomRequestParams = new();

            // Act
            ActionResult<PagedList<BaseRoomRequestDto>> result = await roomRequestController.GetAssignedRoomRequests(roomRequestParams);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<PagedList<BaseRoomRequestDto>>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task GetRoomRequest_ServiceResponseIsValid_True()
        {
            // Arrange
            var roomRequestController = CreateRoomRequestController();

            // Act
            ActionResult<RoomRequestDto> result = await roomRequestController.GetRoomRequest(1);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<RoomRequestDto>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task GetRoomRequest_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockRoomRequestService = GetMockedService.GetRoomRequestServiceMock(responseIsValid: false);
            var roomRequestController = CreateRoomRequestController();

            // Act
            ActionResult<RoomRequestDto> result = await roomRequestController.GetRoomRequest(1);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<RoomRequestDto>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task EndedRoomRequestsAverageDuration_ServiceResponseIsValid_True()
        {
            // Arrange
            var roomRequestController = CreateRoomRequestController();

            // Act
            ActionResult<TimeSpan> result = await roomRequestController.EndedRoomRequestsAverageDuration();

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<TimeSpan>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task EndedRoomRequestsAverageDuration_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockRoomRequestService = GetMockedService.GetRoomRequestServiceMock(responseIsValid: false);
            var roomRequestController = CreateRoomRequestController();

            // Act
            ActionResult<TimeSpan> result = await roomRequestController.EndedRoomRequestsAverageDuration();

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<TimeSpan>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task StartRoomRequest_ServiceResponseIsValid_True()
        {
            // Arrange
            var roomRequestController = CreateRoomRequestController();

            // Act
            ActionResult<bool> result = await roomRequestController.StartRoomRequest(1);

            // Assert
            var resultValue = result.Result as NoContentResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<bool>>();
            resultValue.StatusCode.Should().Be(204);
        }

        [Fact]
        public async Task StartRoomRequest_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockRoomRequestService = GetMockedService.GetRoomRequestServiceMock(responseIsValid: false);
            var roomRequestController = CreateRoomRequestController();

            // Act
            ActionResult<bool> result = await roomRequestController.StartRoomRequest(1);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<bool>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task EndRoomRequest_ServiceResponseIsValid_True()
        {
            // Arrange
            var roomRequestController = CreateRoomRequestController();

            // Act
            ActionResult<bool> result = await roomRequestController.EndRoomRequest(1);

            // Assert
            var resultValue = result.Result as NoContentResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<bool>>();
            resultValue.StatusCode.Should().Be(204);
        }

        [Fact]
        public async Task EndRoomRequest_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockRoomRequestService = GetMockedService.GetRoomRequestServiceMock(responseIsValid: false);
            var roomRequestController = CreateRoomRequestController();

            // Act
            ActionResult<bool> result = await roomRequestController.EndRoomRequest(1);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<bool>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task DeleteRoomRequest_ServiceResponseIsValid_True()
        {
            // Arrange
            var roomRequestController = CreateRoomRequestController();

            // Act
            ActionResult<bool> result = await roomRequestController.DeleteRoomRequest(1);

            // Assert
            var resultValue = result.Result as NoContentResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<bool>>();
            resultValue.StatusCode.Should().Be(204);
        }

        [Fact]
        public async Task DeleteRoomRequest_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockRoomRequestService = GetMockedService.GetRoomRequestServiceMock(responseIsValid: false);
            var roomRequestController = CreateRoomRequestController();

            // Act
            ActionResult<bool> result = await roomRequestController.DeleteRoomRequest(1);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<bool>>();
            errors.First().Should().Be("Test error");
        }
    }
}
