using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SoleusHotelApi.Migrations
{
    public partial class RoomRequestUpdate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameTable("PendingRoomRequests", null, "RoomRequests");

            migrationBuilder.DropForeignKey(
                name: "FK_Photos_EndedRoomRequests_EndedRoomRequestId",
                table: "Photos");

            migrationBuilder.DropTable(
                name: "EndedRoomRequests");

            migrationBuilder.DropIndex(
                name: "IX_Photos_EndedRoomRequestId",
                table: "Photos");

            migrationBuilder.DropColumn(
                name: "EndedRoomRequestId",
                table: "Photos");

            migrationBuilder.DropColumn(
                name: "IsCompleted",
                table: "RoomRequests");

            migrationBuilder.AddColumn<DateTime>(
                name: "DateEnd",
                table: "RoomRequests",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<TimeSpan>(
                name: "Duration",
                table: "RoomRequests",
                type: "time",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "RequestStatus",
                table: "RoomRequests",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DateEnd",
                table: "PendingRoomRequests");

            migrationBuilder.DropColumn(
                name: "Duration",
                table: "PendingRoomRequests");

            migrationBuilder.DropColumn(
                name: "RequestStatus",
                table: "PendingRoomRequests");

            migrationBuilder.AddColumn<int>(
                name: "EndedRoomRequestId",
                table: "Photos",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsCompleted",
                table: "PendingRoomRequests",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.CreateTable(
                name: "EndedRoomRequests",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RoomId = table.Column<int>(type: "int", nullable: false),
                    DateEnd = table.Column<DateTime>(type: "datetime2", nullable: false),
                    DateStart = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Department = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(280)", maxLength: 280, nullable: true),
                    Duration = table.Column<TimeSpan>(type: "time", nullable: false),
                    RequestDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Subject = table.Column<string>(type: "nvarchar(40)", maxLength: 40, nullable: false),
                    Topic = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_EndedRoomRequests", x => x.Id);
                    table.ForeignKey(
                        name: "FK_EndedRoomRequests_HotelUsers_RoomId",
                        column: x => x.RoomId,
                        principalTable: "HotelUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Photos_EndedRoomRequestId",
                table: "Photos",
                column: "EndedRoomRequestId");

            migrationBuilder.CreateIndex(
                name: "IX_EndedRoomRequests_RoomId",
                table: "EndedRoomRequests",
                column: "RoomId");

            migrationBuilder.AddForeignKey(
                name: "FK_Photos_EndedRoomRequests_EndedRoomRequestId",
                table: "Photos",
                column: "EndedRoomRequestId",
                principalTable: "EndedRoomRequests",
                principalColumn: "Id");
        }
    }
}
