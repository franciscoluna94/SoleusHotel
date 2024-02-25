import { Component, OnInit } from '@angular/core';
import { take } from 'rxjs';
import { RolesConstants } from 'src/app/core/constants/rolesConstants';
import { RoomRequestStatusConstants } from 'src/app/core/constants/roomRequestStatusConstants';
import { RoomRequest } from 'src/app/core/models/roomRequest';
import { RoomRequestParams } from 'src/app/core/models/roomRequestParams';
import { User } from 'src/app/core/models/user';
import { AccountService } from 'src/app/core/services/account.service';
import { RoomRequestService } from 'src/app/core/services/room-request-service.service';


@Component({
  selector: 'app-request-list',
  templateUrl: './ended-request-list.component.html',
  styleUrls: ['./ended-request-list.component.css']
})
export class EndedRequestListComponent implements OnInit {
  user: User;
  roomRequests: RoomRequest[];
  isReceptionOrAdmin: boolean = false;
  roomRequestParams: RoomRequestParams;

  constructor(private accountService: AccountService, private roomRequestService: RoomRequestService) {
    this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
    this.roomRequestParams = this.roomRequestService.resetRoomRequestParams();
   }

  ngOnInit(): void {    
    this.getRoomRequests();
  }

  getRoomRequests(){
    this.roomRequestParams.department = this.user.roles.includes(RolesConstants.admin) ? RolesConstants.all.join(',') : this.user.roles.join(',');
    this.roomRequestParams.requestStatus = RoomRequestStatusConstants.ended;
    this.roomRequestService.setRoomRequestParams(this.roomRequestParams);
    
    this.roomRequestService.getFilteredRoomRequests(this.roomRequestParams).subscribe(response => {
      this.roomRequests = response.result;
    })
  }

  setSort(filter: number){
    switch(filter){
      case 0: this.roomRequestParams.orderBy = "room";
              break;
      case 1: this.roomRequestParams.orderBy = "department";
              break;
      case 2: this.roomRequestParams.orderBy = "topic";
              break;
      case 3: this.roomRequestParams.orderBy = "subject";
              break;
      case 4: this.roomRequestParams.orderBy = "date";
              break;
    }    
    this.getRoomRequests();
  }

  pageChanged(event: any){
    this.roomRequestParams.pageNumber = event.page;
    this.roomRequestService.setRoomRequestParams(this.roomRequestParams);
    this.getRoomRequests();
  }

  resetFilters(){
    this.roomRequestParams = this.roomRequestService.resetRoomRequestParams();
    this.getRoomRequests();
  }
}
