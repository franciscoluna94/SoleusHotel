using FluentAssertions;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Moq;
using SoleusHotelApi.Controllers;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Services.Contracts;
using SoleusHotelApi.UnitTests.Helpers.Mocks;

namespace SoleusHotelApi.UnitTests.UnitTests.Controllers
{
    public class AdminControllerTests
    {
        private Mock<IHotelUserService> _mockHotelUserService;
        private Mock<IAdminService> _mockAdminService;

        public AdminControllerTests()
        {
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: true);
            _mockAdminService = GetMockedService.GetAdminServiceMock(responseIsValid: true);
        }


        private AdminController CreateAdminController()
        {
            AdminController adminController = new (_mockHotelUserService.Object, _mockAdminService.Object);

            adminController.ControllerContext = new ControllerContext();
            adminController.ControllerContext.HttpContext = new DefaultHttpContext();

            return adminController;
        }

        [Fact]
        public async Task CreateUser_ServiceResponseIsValid_True()
        {
            // Arrange
            var adminController = CreateAdminController();            
            CreateHotelUserDto createHotelUserDto = new();

            // Act
            ActionResult<CreatedHotelUserDto> result = await adminController.CreateUser(
                createHotelUserDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<CreatedHotelUserDto>>();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task CreateUser_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var adminController = CreateAdminController();
            CreateHotelUserDto createHotelUserDto = new();

            // Act
            ActionResult<CreatedHotelUserDto> result = await adminController.CreateUser(
                createHotelUserDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<CreatedHotelUserDto>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task GetHotelUsers_ServiceResponseIsValid_True()
        {
            // Arrange
            var adminController = CreateAdminController();
            HotelUserParams hotelUserParams = new();

            // Act
            ActionResult<PagedList<HotelUserWithRolesDto>> result = await adminController.GetHotelUsers(
                hotelUserParams);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().BeOfType<ActionResult<PagedList<HotelUserWithRolesDto>>>();
            result.Should().NotBeNull();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task GetHotelUsers_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var adminController = CreateAdminController();
            HotelUserParams hotelUserParams = new();

            // Act
            ActionResult<PagedList<HotelUserWithRolesDto>> result = await adminController.GetHotelUsers(
                hotelUserParams);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<PagedList<HotelUserWithRolesDto>>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task GetHotelUser_ServiceResponseIsValid_True()
        {
            // Arrange
            var adminController = CreateAdminController();

            // Act
            ActionResult<HotelUserWithRolesDto> result = await adminController.GetHotelUser("100");

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().BeOfType<ActionResult<HotelUserWithRolesDto>>();
            result.Should().NotBeNull();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task GetHotelUser_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var adminController = CreateAdminController();

            // Act
            ActionResult<HotelUserWithRolesDto> result = await adminController.GetHotelUser("100");

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<HotelUserWithRolesDto>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task EditUser_ServiceResponseIsValid_True()
        {
            // Arrange
            var adminController = CreateAdminController();
            CreateHotelUserDto createHotelUserDto = new();

            // Act
            ActionResult<CreatedHotelUserDto> result = await adminController.EditUser(createHotelUserDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().BeOfType<ActionResult<CreatedHotelUserDto>>();
            result.Should().NotBeNull();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task EditUser_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var adminController = CreateAdminController();
            CreateHotelUserDto createHotelUserDto = new();

            // Act
            ActionResult<CreatedHotelUserDto> result = await adminController.EditUser(createHotelUserDto);

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<CreatedHotelUserDto>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task ResetGuestPasswords_ServiceResponseIsValid_True()
        {
            // Arrange
            var adminController = CreateAdminController();

            // Act
            ActionResult<bool> result = await adminController.ResetGuestPasswords("password");

            // Assert
            var resultValue = result.Result as NoContentResult;
            result.Should().BeOfType<ActionResult<bool>>();
            result.Should().NotBeNull();
            resultValue.StatusCode.Should().Be(204);
        }

        [Fact]
        public async Task ResetGuestPasswords_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var adminController = CreateAdminController();

            // Act
            ActionResult<bool> result = await adminController.ResetGuestPasswords("password");

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<bool>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task DeleteUser_ServiceResponseIsValid_True()
        {
            // Arrange
            var adminController = CreateAdminController();

            // Act
            ActionResult<bool> result = await adminController.DeleteUser("100");

            // Assert
            var resultValue = result.Result as NoContentResult;
            result.Should().BeOfType<ActionResult<bool>>();
            result.Should().NotBeNull();
            resultValue.StatusCode.Should().Be(204);
        }

        [Fact]
        public async Task DeleteUser_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(responseIsValid: false);
            var adminController = CreateAdminController();

            // Act
            ActionResult<bool> result = await adminController.DeleteUser("100");

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<bool>>();
            errors.First().Should().Be("Test error");
        }

        [Fact]
        public async Task InitialSetup_ServiceResponseIsValid_True()
        {
            // Arrange
            var adminController = CreateAdminController();

            // Act
            ActionResult<string> result = await adminController.InitialSetup();

            // Assert
            var resultValue = result.Result as ObjectResult;
            result.Should().BeOfType<ActionResult<string>>();
            result.Should().NotBeNull();
            resultValue.StatusCode.Should().Be(200);
        }

        [Fact]
        public async Task InitialSetup_ServiceResponseIsValid_False()
        {
            // Arrange
            _mockAdminService = GetMockedService.GetAdminServiceMock(responseIsValid: false);
            var adminController = CreateAdminController();

            // Act
            ActionResult<string> result = await adminController.InitialSetup();

            // Assert
            var resultValue = result.Result as ObjectResult;
            var errors = resultValue.Value as List<string>;
            result.Should().NotBeNull();
            result.Should().BeOfType<ActionResult<string>>();
            errors.First().Should().Be("Test error");
        }
    }
}
