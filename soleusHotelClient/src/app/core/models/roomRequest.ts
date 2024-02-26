export interface RoomRequest {
    id: number;
    room: string;
    department: string;
    topic: string;
    subject: string;
    description: string;
    requestDate: string;
    dateStart: string;
    dateEnd: string;
    duration: number;
    durationString: string;
    requestStatus: number;
}