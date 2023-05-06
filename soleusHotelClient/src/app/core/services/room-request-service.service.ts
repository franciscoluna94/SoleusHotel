import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { ApiRoutesConstant } from '../constants/apiRoutesConstants';
import { RoomRequest } from '../models/roomRequest';
import { RoomRequestParams } from '../models/roomRequestParams';
import { getPaginatedResult, getPaginationHeaders } from './paginationHelper';

@Injectable({
  providedIn: 'root',
})
export class RoomRequestServiceService {
  baseUrl = environment.apiUrl;
  romRequestParams: RoomRequestParams;

  constructor(private http: HttpClient) {
    this.romRequestParams = new RoomRequestParams();
  }

  getFilteredRoomRequests(romRequestParams: RoomRequestParams) {
    let params = getPaginationHeaders(
      romRequestParams.pageNumber,
      romRequestParams.pageSize
    );

    params = this.addRoomRequestParams(romRequestParams, params);

    return getPaginatedResult<RoomRequest[]>(
      this.baseUrl + ApiRoutesConstant.filteredRoomRequests,
      params,
      this.http
    );
  }

  addRoomRequestParams(
    roomRequestParams: RoomRequestParams,
    params: HttpParams
  ) {
    params = params.append('orderBy', roomRequestParams.orderBy);

    if (roomRequestParams.room) {
      params = params.append('room', roomRequestParams.room);
    }
    if (roomRequestParams.department) {
      params = params.append('department', roomRequestParams.department);
    }
    if (roomRequestParams.topic) {
      params = params.append('topic', roomRequestParams.topic);
    }
    if (roomRequestParams.subject) {
      params = params.append('subject', roomRequestParams.subject);
    }
    if (roomRequestParams.requestStatus) {
      params = params.append('requestStatus', roomRequestParams.requestStatus);
    }
    if (roomRequestParams.assignedTo) {
      params = params.append('assignedTo', roomRequestParams.assignedTo);
    }

    return params;
  }

  setRoomRequestParams(romRequestParams: RoomRequestParams) {
    this.romRequestParams = romRequestParams;
  }

  getRoomRequestParams() {
    return this.romRequestParams;
  }

  resetRoomRequestParams() {
    this.romRequestParams = new RoomRequestParams();
    return this.romRequestParams;
  }
}
