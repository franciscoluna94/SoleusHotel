using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SoleusHotelApi.Migrations
{
    public partial class UniqueRoom : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "RoomNumber",
                table: "HotelUsers",
                type: "nvarchar(450)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_HotelUsers_RoomNumber",
                table: "HotelUsers",
                column: "RoomNumber",
                unique: true,
                filter: "[RoomNumber] IS NOT NULL");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_HotelUsers_RoomNumber",
                table: "HotelUsers");

            migrationBuilder.AlterColumn<string>(
                name: "RoomNumber",
                table: "HotelUsers",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)",
                oldNullable: true);
        }
    }
}
