export class RoomRequestParams {
  pageNumber = 1;
  pageSize = 20;

  room: string;
  department: string;
  topic: string;
  subject: string;
  minRequestDate: Date;
  maxRequestDate: Date;
  requestStatus: string;
  minDateStart: Date;
  maxDateStart: Date;
  minDateEnd: Date;
  maxDateEnd: Date;
  assignedTo: string;
  orderBy = 'date';
}
