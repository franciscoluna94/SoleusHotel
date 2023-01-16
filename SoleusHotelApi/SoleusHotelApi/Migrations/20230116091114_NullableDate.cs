using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SoleusHotelApi.Migrations
{
    public partial class NullableDate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_PendingRoomRequests_HotelUsers_RoomId",
                table: "RoomRequests");

            migrationBuilder.DropForeignKey(
                name: "FK_Photos_PendingRoomRequests_RoomRequestId",
                table: "Photos");

            migrationBuilder.DropPrimaryKey(
                name: "PK_PendingRoomRequests",
                table: "RoomRequests");

            migrationBuilder.RenameIndex(
                name: "IX_PendingRoomRequests_RoomId",
                table: "RoomRequests",
                newName: "IX_RoomRequests_RoomId");

            migrationBuilder.AlterColumn<DateTime>(
                name: "DateStart",
                table: "RoomRequests",
                type: "datetime2",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "datetime2");

            migrationBuilder.AddPrimaryKey(
                name: "PK_RoomRequests",
                table: "RoomRequests",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Photos_RoomRequests_RoomRequestId",
                table: "Photos",
                column: "RoomRequestId",
                principalTable: "RoomRequests",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_RoomRequests_HotelUsers_RoomId",
                table: "RoomRequests",
                column: "RoomId",
                principalTable: "HotelUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Photos_RoomRequests_RoomRequestId",
                table: "Photos");

            migrationBuilder.DropForeignKey(
                name: "FK_RoomRequests_HotelUsers_RoomId",
                table: "RoomRequests");

            migrationBuilder.DropPrimaryKey(
                name: "PK_RoomRequests",
                table: "RoomRequests");

            migrationBuilder.RenameIndex(
                name: "IX_RoomRequests_RoomId",
                table: "RoomRequests",
                newName: "IX_PendingRoomRequests_RoomId");

            migrationBuilder.AlterColumn<DateTime>(
                name: "DateStart",
                table: "RoomRequests",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_PendingRoomRequests",
                table: "RoomRequests",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_PendingRoomRequests_HotelUsers_RoomId",
                table: "RoomRequests",
                column: "RoomId",
                principalTable: "HotelUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Photos_PendingRoomRequests_RoomRequestId",
                table: "Photos",
                column: "RoomRequestId",
                principalTable: "RoomRequests",
                principalColumn: "Id");
        }
    }
}
