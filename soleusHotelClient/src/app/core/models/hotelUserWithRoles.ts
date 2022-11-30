export interface HotelUserWithRoles {
    roomNumber: string;
    guestName: string;
    checkInDate: Date;
    checkOutDate: Date;
    userRoles: string[];
}