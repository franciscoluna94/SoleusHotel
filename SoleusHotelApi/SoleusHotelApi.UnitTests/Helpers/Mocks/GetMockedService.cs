using Moq;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Helpers;
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

                mock.Setup(x => x.GetHotelUsers(It.IsAny<HotelUserParams>()))
                    .ReturnsAsync(GetServiceResponse<PagedList<HotelUserWithRolesDto>>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.GetHotelUserWithRoles(It.IsAny<string>()))
                    .ReturnsAsync(GetServiceResponse<HotelUserWithRolesDto>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.EditUser(It.IsAny<CreateHotelUserDto>()))
                    .ReturnsAsync(GetServiceResponse<CreatedHotelUserDto>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.ResetGuestsPasswords(It.IsAny<string>()))
                   .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.DeleteHotelUser(It.IsAny<string>()))
                  .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValidFalse());

                return mock;
            }

            mock.Setup(x => x.CreateHotelUser(It.IsAny<CreateHotelUserDto>()))
               .ReturnsAsync(GetServiceResponse<CreatedHotelUserDto>.GetServiceResponseIsValid(new CreatedHotelUserDto()));

            mock.Setup(x => x.GetHotelUsers(It.IsAny<HotelUserParams>()))
                .ReturnsAsync(GetServiceResponse<PagedList<HotelUserWithRolesDto>>
                    .GetServiceResponseIsValid( new PagedList<HotelUserWithRolesDto>(new List<HotelUserWithRolesDto>(), 1, 1, 1)));

            mock.Setup(x => x.GetHotelUserWithRoles(It.IsAny<string>()))
               .ReturnsAsync(GetServiceResponse<HotelUserWithRolesDto>.GetServiceResponseIsValid(new HotelUserWithRolesDto()));

            mock.Setup(x => x.EditUser(It.IsAny<CreateHotelUserDto>()))
               .ReturnsAsync(GetServiceResponse<CreatedHotelUserDto>.GetServiceResponseIsValid(new CreatedHotelUserDto()));

            mock.Setup(x => x.ResetGuestsPasswords(It.IsAny<string>()))
            .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValid(true));

            mock.Setup(x => x.DeleteHotelUser(It.IsAny<string>()))
          .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValid(true));

            return mock;
        }

        public static Mock<IAdminService> GetAdminServiceMock(bool isValid)
        {
            Mock<IAdminService> mock = new();

            if (!isValid)
            {
                mock.Setup(x => x.InitialSetup())
                  .ReturnsAsync(GetServiceResponse<string>.GetServiceResponseIsValidFalse());

                return mock;
            }

            mock.Setup(x => x.InitialSetup())
                 .ReturnsAsync(GetServiceResponse<string>.GetServiceResponseIsValid("test succeeded"));

            return mock;
        }
    }
}
