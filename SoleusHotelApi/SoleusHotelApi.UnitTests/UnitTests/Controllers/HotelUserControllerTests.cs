using FluentAssertions;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Moq;
using SoleusHotelApi.Controllers;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Services.Contracts;
using SoleusHotelApi.UnitTests.Helpers.Mocks;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoleusHotelApi.UnitTests.UnitTests.Controllers
{
    public class HotelUserControllerTests
    {
        private Mock<IHotelUserService> _mockHotelUserService;

        public HotelUserControllerTests()
        {
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: true);
        }

        private HotelUserController CreateHotelUserController()
        {
            HotelUserController hotelUserController = new(_mockHotelUserService.Object);
            hotelUserController.ControllerContext = new ControllerContext();
            hotelUserController.ControllerContext.HttpContext = new DefaultHttpContext();

            return hotelUserController;
        }

        [Fact]
        public async Task Login_ServiceResponseIsValid_True()
        {
            // Arrange
            var hotelUserController = CreateHotelUserController();
            LoginHotelUserDto loginHotelUserDto = new();

            // Act
            ActionResult<LoggedUserDto> result = await hotelUserController.Login(
                loginHotelUserDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<LoggedUserDto>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task Login_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var hotelUserController = CreateHotelUserController();
            LoginHotelUserDto loginHotelUserDto = new();

            // Act
            ActionResult<LoggedUserDto> result = await hotelUserController.Login(
                loginHotelUserDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<LoggedUserDto>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task GetHotelUsersWithRequestsNumber_ServiceResponseIsValid_True()
        {
            // Arrange
            var hotelUserController = CreateHotelUserController();
            HotelUserParams hotelUserParams = new();

            // Act
            ActionResult<PagedList<HotelUserWithRequestsDto>> result = await hotelUserController.GetHotelUsersWithRequestsNumber(
                hotelUserParams);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<PagedList<HotelUserWithRequestsDto>>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task GetHotelUsersWithRequestsNumber_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var hotelUserController = CreateHotelUserController();
            HotelUserParams hotelUserParams = new();

            // Act
            ActionResult<PagedList<HotelUserWithRequestsDto>> result = await hotelUserController.GetHotelUsersWithRequestsNumber(
                hotelUserParams);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<PagedList<HotelUserWithRequestsDto>>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task GetHotelUser_ServiceResponseIsValid_True()
        {
            // Arrange
            var hotelUserController = CreateHotelUserController();

            // Act
            ActionResult<HotelUserDto> result = await hotelUserController.GetHotelUser("100");

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<HotelUserDto>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task GetHotelUser_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var hotelUserController = CreateHotelUserController();

            // Act
            ActionResult<HotelUserDto> result = await hotelUserController.GetHotelUser("100");

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<HotelUserDto>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task EditGuest_ServiceResponseIsValid_True()
        {
            // Arrange
            var hotelUserController = CreateHotelUserController();
            HotelUserDto hotelUserDto = new HotelUserDto();

            // Act
            ActionResult<HotelUserDto> result = await hotelUserController.EditGuest(hotelUserDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<HotelUserDto>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task EditGuest_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var hotelUserController = CreateHotelUserController();
            HotelUserDto hotelUserDto = new HotelUserDto();

            // Act
            ActionResult<HotelUserDto> result = await hotelUserController.EditGuest(hotelUserDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<HotelUserDto>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task ForgotPassword_ServiceResponseIsValid_True()
        {
            // Arrange
            var hotelUserController = CreateHotelUserController();
            HotelUserPasswordUpdatesDto hotelUserPasswordUpdatesDto = new HotelUserPasswordUpdatesDto();

            // Act
            ActionResult<LoggedUserDto> result = await hotelUserController.ForgotPassword(hotelUserPasswordUpdatesDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<LoggedUserDto>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task ForgotPassword_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var hotelUserController = CreateHotelUserController();
            HotelUserPasswordUpdatesDto hotelUserPasswordUpdatesDto = new HotelUserPasswordUpdatesDto();

            // Act
            ActionResult<LoggedUserDto> result = await hotelUserController.ForgotPassword(hotelUserPasswordUpdatesDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<LoggedUserDto>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task GenerateUserPassword_ServiceResponseIsValid_True()
        {
            // Arrange
            var hotelUserController = CreateHotelUserController();

            // Act
            ActionResult<GenerateHotelUserPasswordDto> result = await hotelUserController.GenerateUserPassword(roomNumber: "100");

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<GenerateHotelUserPasswordDto>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task GenerateUserPassword_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var hotelUserController = CreateHotelUserController();

            // Act
            ActionResult<GenerateHotelUserPasswordDto> result = await hotelUserController.GenerateUserPassword(roomNumber: "100");

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<GenerateHotelUserPasswordDto>>();
            errors.First().Should().Be("Test error");
        }
    }
}
