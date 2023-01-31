using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using Moq;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Services;
using SoleusHotelApi.UnitTests.Helpers.Mocks;
using System;
using System.Threading.Tasks;
using Xunit;

namespace SoleusHotelApi.UnitTests.UnitTests.Services
{
    public class AdminServiceTests
    {
        private Mock<UserManager<HotelUser>> _mockUserManager;
        private Mock<RoleManager<HotelRole>> _mockRoleManager;
        private Mock<IRoomRepository> _mockRoomRepository;
        private Mock<IConfiguration> _mockConfiguration;

        public AdminServiceTests()
        {
            _mockUserManager = GetMockedRepository.GetUserManagerMock<HotelUser>(new List<HotelUser>());
            _mockRoleManager = GetMockedRepository.GetRoleManagerMock();
            _mockRoomRepository = GetMockedRepository.GetRoomRepositoryMock();
            _mockConfiguration = new Mock<IConfiguration>(); ;
        }

        private AdminService CreateService()
        {
            return new AdminService(
                _mockUserManager.Object,
                _mockRoleManager.Object,
                _mockRoomRepository.Object,
                _mockConfiguration.Object);
        }

        [Fact]
        public async Task InitialSetup_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            _mockConfiguration.SetupGet(x => x[It.IsAny<string>()]).Returns("test");
            var service = CreateService();

            // Act
            var result = await service.InitialSetup();

            // Assert
            Assert.True(false);
        }
    }
}
