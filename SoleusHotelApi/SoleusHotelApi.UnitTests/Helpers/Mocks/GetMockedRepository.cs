using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Moq;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.Entities;

namespace SoleusHotelApi.UnitTests.Helpers.Mocks
{
    public static class GetMockedRepository
    {
        public static Mock<UserManager<TUser>> GetUserManagerMock<TUser>(List<TUser> ls) where TUser : class
        {
            Mock<IUserStore<TUser>> store = new ();
            Mock<UserManager<TUser>> mgr = new (store.Object, null, null, null, null, null, null, null, null);
            mgr.Object.UserValidators.Add(new UserValidator<TUser>());
            mgr.Object.PasswordValidators.Add(new PasswordValidator<TUser>());

            mgr.Setup(x => x.DeleteAsync(It.IsAny<TUser>())).ReturnsAsync(IdentityResult.Success);
            mgr.Setup(x => x.CreateAsync(It.IsAny<TUser>(), It.IsAny<string>())).ReturnsAsync(IdentityResult.Success).Callback<TUser, string>((x, y) => ls.Add(x));
            mgr.Setup(x => x.UpdateAsync(It.IsAny<TUser>())).ReturnsAsync(IdentityResult.Success);
            mgr.Setup(x => x.Users.AnyAsync(It.IsAny<CancellationToken>())).ReturnsAsync(false);
            return mgr;
        }

        public static Mock<RoleManager<HotelRole>> GetRoleManagerMock()
        {
            Mock<IRoleStore<HotelRole>> roleStore = new ();

            Mock<RoleManager<HotelRole>> mock = new(roleStore.Object, null, null, null, null);

            return mock;
        }

        public static Mock<IRoomRepository> GetRoomRepositoryMock()
        {
            Mock<IRoomRepository> mock = new();

            return mock;
        }
    }
}
