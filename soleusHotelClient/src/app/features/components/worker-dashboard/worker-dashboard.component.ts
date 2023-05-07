import { Component, OnInit } from '@angular/core';
import { map, take } from 'rxjs';
import { RolesConstants } from 'src/app/core/constants/rolesConstants';
import { RoomRequestStatusConstants } from 'src/app/core/constants/roomRequestStatusConstants';
import { RoomRequestParams } from 'src/app/core/models/roomRequestParams';
import { User } from 'src/app/core/models/user';
import { AccountService } from 'src/app/core/services/account.service';
import { RoomRequestService } from 'src/app/core/services/room-request-service.service';

@Component({
  selector: 'app-worker-dashboard',
  templateUrl: './worker-dashboard.component.html',
  styleUrls: ['./worker-dashboard.component.css'],
})
export class WorkerDashboardComponent implements OnInit {
  user: User;
  roomRequestParams: RoomRequestParams;
  pendingRequests: number;
  myRequests: number;
  completedRequests: number;
  averageTimePerRequest: string;

  constructor(
    private accountService: AccountService,
    private roomRequestService: RoomRequestService
  ) {
    this.accountService.currentUser$
      .pipe(take(1))
      .subscribe((user) => (this.user = user));
    this.roomRequestParams = this.roomRequestService.resetRoomRequestParams();
  }

  ngOnInit(): void {
    this.getAssignedRoomRequests()
    .subscribe((length) => (this.myRequests = length));
    this.getFilteredRoomRequests(RoomRequestStatusConstants.new.split(','))
    .subscribe((length) => (this.pendingRequests = length));

    this.getFilteredRoomRequests(RoomRequestStatusConstants.ended.split(','), this.user.roomNumber)
      .subscribe((length) => (this.completedRequests = length));
    this. getAverageTimePerRequest();
  }

  getFilteredRoomRequests(roomrequestStatus: string[], assignedTo?: string) {
    this.roomRequestParams.department = this.user.roles.includes(RolesConstants.admin)
      ? RolesConstants.all.join(',')
      : this.user.roles.join(',');
    this.roomRequestParams.assignedTo = assignedTo 
      ? assignedTo 
      : null;

    this.roomRequestParams.requestStatus = roomrequestStatus.join(',');
    this.roomRequestService.setRoomRequestParams(this.roomRequestParams);
    
    return this.roomRequestService
    .getFilteredRoomRequests(this.roomRequestParams)
    .pipe(map((response) => response.result.length));
  }

  getAssignedRoomRequests() {
    return this.roomRequestService
    .getAssignedRoomRequests(this.roomRequestParams)
    .pipe(map((response) => response.result.length));
  }

  getAverageTimePerRequest() {
    return this.roomRequestService.getAverageTimePerRequest().subscribe(response => {
      this.averageTimePerRequest = this.formatDuration(response);
    });
  }
  
  formatDuration(milliseconds: number): string {
    if (milliseconds === 0) {
      return '';
    }
    const seconds = Math.floor(milliseconds / 1000);
    const hours = Math.floor(seconds / 3600);
    const minutes = Math.floor((seconds % 3600) / 60);
    const remainingSeconds = seconds % 60;
  
    return `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${remainingSeconds.toString().padStart(2, '0')}`;
  }

  getClassByTimestamp(timestamp: string): string {

    if (timestamp ==='') {
      return 'card-info';
    }
    
    const timeInMs = Date.parse(`1970-01-01T${timestamp}Z`);
  
    if (timeInMs < 600000) {
      return 'card-success';
    } else if (timeInMs >= 600000 && timeInMs < 1200000) {
      return 'card-warning';
    } else {
      return 'card-danger';
    }
  }
}
