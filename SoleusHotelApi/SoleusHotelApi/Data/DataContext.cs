using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Entities;

namespace SoleusHotelApi.Data
{
    public class DataContext : IdentityDbContext<HotelUser, HotelRole, int,
        IdentityUserClaim<int>, HotelUserRole, IdentityUserLogin<int>,
        IdentityRoleClaim<int>, IdentityUserToken<int>>
    {
        public DataContext(DbContextOptions options) : base(options)
        {

        }

        public DbSet<RoomRequest> RoomRequests { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<HotelUser>().Ignore(c => c.AccessFailedCount)
                                          .Ignore(c => c.Email)
                                          .Ignore(c => c.EmailConfirmed)
                                          .Ignore(c => c.LockoutEnabled)
                                          .Ignore(c => c.LockoutEnd)
                                          .Ignore(c => c.NormalizedEmail)
                                          .Ignore(c => c.PhoneNumber)
                                          .Ignore(c => c.PhoneNumberConfirmed)
                                          .Ignore(c => c.TwoFactorEnabled);

            builder.Entity<HotelUser>().HasIndex(u => u.RoomNumber).IsUnique();

            builder.Entity<HotelUser>().ToTable("HotelUsers");

            builder.Entity<HotelUser>()
                .HasMany(ur => ur.UserRoles)
                .WithOne(u => u.HotelUser)
                .HasForeignKey(u => u.UserId)
                .IsRequired();

            builder.Entity<HotelRole>()
                .HasMany(ur => ur.HotelUserRoles)
                .WithOne(u => u.Role)
                .HasForeignKey(u => u.RoleId)
                .IsRequired();
        }
    }
}
