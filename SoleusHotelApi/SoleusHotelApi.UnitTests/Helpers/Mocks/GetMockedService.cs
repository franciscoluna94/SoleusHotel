using Moq;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.UnitTests.Helpers.Mocks
{
    public static class GetMockedService
    {
        public static Mock<IHotelUserService> GetHotelUserServiceMock(bool responseIsValid)
        {
            Mock<IHotelUserService> mock = new();

            if (!responseIsValid)
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

                mock.Setup(x => x.LoginHotelUser(It.IsAny<LoginHotelUserDto>()))
                    .ReturnsAsync(GetServiceResponse<LoggedUserDto>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.GetHotelUsersWithCreatedRoomRequests(It.IsAny<HotelUserParams>()))
                  .ReturnsAsync(GetServiceResponse<PagedList<HotelUserWithRequestsDto>>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.GetHotelUser(It.IsAny<string>()))
                  .ReturnsAsync(GetServiceResponse<HotelUserDto>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.EditGuestUser(It.IsAny<HotelUserDto>()))
                  .ReturnsAsync(GetServiceResponse<HotelUserDto>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.ForgotPassword(It.IsAny<HotelUserPasswordUpdatesDto>()))
                  .ReturnsAsync(GetServiceResponse<LoggedUserDto>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.GenerateUserPassword(It.IsAny<string>()))
                  .ReturnsAsync(GetServiceResponse<GenerateHotelUserPasswordDto>.GetServiceResponseIsValidFalse());

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

            mock.Setup(x => x.LoginHotelUser(It.IsAny<LoginHotelUserDto>()))
                .ReturnsAsync(GetServiceResponse<LoggedUserDto>.GetServiceResponseIsValid(new LoggedUserDto()));

            mock.Setup(x => x.GetHotelUsersWithCreatedRoomRequests(It.IsAny<HotelUserParams>()))
                .ReturnsAsync(GetServiceResponse<PagedList<HotelUserWithRequestsDto>>
                    .GetServiceResponseIsValid(new PagedList<HotelUserWithRequestsDto>(new List<HotelUserWithRequestsDto>(), 1, 1, 1)));

            mock.Setup(x => x.GetHotelUser(It.IsAny<string>()))
                  .ReturnsAsync(GetServiceResponse<HotelUserDto>.GetServiceResponseIsValid(new HotelUserDto()));

            mock.Setup(x => x.EditGuestUser(It.IsAny<HotelUserDto>()))
                 .ReturnsAsync(GetServiceResponse<HotelUserDto>.GetServiceResponseIsValid(new HotelUserDto()));

            mock.Setup(x => x.ForgotPassword(It.IsAny<HotelUserPasswordUpdatesDto>()))
                .ReturnsAsync(GetServiceResponse<LoggedUserDto>.GetServiceResponseIsValid(new LoggedUserDto()));

            mock.Setup(x => x.GenerateUserPassword(It.IsAny<string>()))
                .ReturnsAsync(GetServiceResponse<GenerateHotelUserPasswordDto>.GetServiceResponseIsValid(new GenerateHotelUserPasswordDto()));

            return mock;
        }

        public static Mock<IRoomRequestService> GetRoomRequestServiceMock(bool responseIsValid)
        {
            Mock<IRoomRequestService> mock = new();

            if (!responseIsValid)
            {
                mock.Setup(x => x.CreateRoomRequest(It.IsAny<CreateRoomRequestDto>(), It.IsAny<string>()))
                  .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.GetFilteredRoomRequests(It.IsAny<RoomRequestParams>()))
                   .ReturnsAsync(GetServiceResponse<PagedList<BaseRoomRequestDto>>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.GetMyRoomRequests(It.IsAny<string>(), It.IsAny<RoomRequestParams>()))
                   .ReturnsAsync(GetServiceResponse<PagedList<BaseRoomRequestDto>>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.GetMyAssignedRequests(It.IsAny<string>(), It.IsAny<RoomRequestParams>()))
                   .ReturnsAsync(GetServiceResponse<PagedList<BaseRoomRequestDto>>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.GetRoomRequest(It.IsAny<int>(), It.IsAny<string>(), It.IsAny<List<string>>()))
                      .ReturnsAsync(GetServiceResponse<RoomRequestDto>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.AverageTimeAssignedRoomRequests(It.IsAny<string>()))
                     .ReturnsAsync(GetServiceResponse<long>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.StartRoomRequest(It.IsAny<int>(), It.IsAny<string>(), It.IsAny<List<string>>()))
                  .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.EndRoomRequest(It.IsAny<int>(), It.IsAny<string>(), It.IsAny<List<string>>()))
                  .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValidFalse());

                mock.Setup(x => x.SafeDeleteRoomRequest(It.IsAny<int>(), It.IsAny<string>(), It.IsAny<List<string>>()))
                 .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValidFalse());

                return mock;
            }

            mock.Setup(x => x.CreateRoomRequest(It.IsAny<CreateRoomRequestDto>(), It.IsAny<string>()))
                      .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValid(true));

            mock.Setup(x => x.GetFilteredRoomRequests(It.IsAny<RoomRequestParams>()))
                .ReturnsAsync(GetServiceResponse<PagedList<BaseRoomRequestDto>>
                    .GetServiceResponseIsValid(new PagedList<BaseRoomRequestDto>(new List<BaseRoomRequestDto>(), 1, 1, 1)));

            mock.Setup(x => x.GetMyRoomRequests(It.IsAny<string>(), It.IsAny<RoomRequestParams>()))
                .ReturnsAsync(GetServiceResponse<PagedList<BaseRoomRequestDto>>
                    .GetServiceResponseIsValid(new PagedList<BaseRoomRequestDto>(new List<BaseRoomRequestDto>(), 1, 1, 1)));

            mock.Setup(x => x.GetMyAssignedRequests(It.IsAny<string>(), It.IsAny<RoomRequestParams>()))
                .ReturnsAsync(GetServiceResponse<PagedList<BaseRoomRequestDto>>
                    .GetServiceResponseIsValid(new PagedList<BaseRoomRequestDto>(new List<BaseRoomRequestDto>(), 1, 1, 1)));

            mock.Setup(x => x.GetRoomRequest(It.IsAny<int>(), It.IsAny<string>(), It.IsAny<List<string>>()))
                      .ReturnsAsync(GetServiceResponse<RoomRequestDto>.GetServiceResponseIsValid(new RoomRequestDto()));

            mock.Setup(x => x.AverageTimeAssignedRoomRequests(It.IsAny<string>()))
                      .ReturnsAsync(GetServiceResponse<long>.GetServiceResponseIsValid(200));

            mock.Setup(x => x.StartRoomRequest(It.IsAny<int>(), It.IsAny<string>(), It.IsAny<List<string>>()))
                  .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValid(true));

            mock.Setup(x => x.EndRoomRequest(It.IsAny<int>(), It.IsAny<string>(), It.IsAny<List<string>>()))
                  .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValid(true));

            mock.Setup(x => x.SafeDeleteRoomRequest(It.IsAny<int>(), It.IsAny<string>(), It.IsAny<List<string>>()))
                  .ReturnsAsync(GetServiceResponse<bool>.GetServiceResponseIsValid(true));

            return mock;
        }

        public static Mock<IAdminService> GetAdminServiceMock(bool responseIsValid)
        {
            Mock<IAdminService> mock = new();

            if (!responseIsValid)
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
