using FluentAssertions;
using Microsoft.AspNetCore.Mvc;
using Moq;
using SoleusHotelApi.Controllers;
using SoleusHotelApi.DTOs.HotelUserDtos;
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
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(true);
            _mockAdminService = new Mock<IAdminService>();
        }

        private AdminController CreateAdminController()
        {
            return new AdminController(
                _mockHotelUserService.Object,
                _mockAdminService.Object);
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
            _mockHotelUserService = GetMockedService.GetHotelUserServiceMock(false);
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
    }
}
