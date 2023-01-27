using Moq;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.UnitTests.Helpers.Mocks
{
    public static class GetMockedService
    {
        public static Mock<IHotelUserService> GetHotelUserServiceMock(bool isValid)
        {
            Mock<IHotelUserService> mock = new();

            if (!isValid)
            {
                mock.Setup(x => x.CreateHotelUser(It.IsAny<CreateHotelUserDto>()))
                    .ReturnsAsync(GetServiceResponse<CreatedHotelUserDto>.GetServiceResponseIsValidFalse());

                return mock;
            }

            mock.Setup(x => x.CreateHotelUser(It.IsAny<CreateHotelUserDto>()))
               .ReturnsAsync(GetServiceResponse<CreatedHotelUserDto>.GetServiceResponseIsValid());

            return mock;
        }
    }
}
