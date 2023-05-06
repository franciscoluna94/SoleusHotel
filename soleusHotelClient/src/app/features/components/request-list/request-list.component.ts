import { Component, OnInit } from '@angular/core';
import { take } from 'rxjs';
import { RoomRequest } from 'src/app/core/models/roomRequest';
import { RoomRequestParams } from 'src/app/core/models/roomRequestParams';
import { User } from 'src/app/core/models/user';
import { AccountService } from 'src/app/core/services/account.service';
import { RoomRequestServiceService } from 'src/app/core/services/room-request-service.service';


@Component({
  selector: 'app-request-list',
  templateUrl: './request-list.component.html',
  styleUrls: ['./request-list.component.css']
})
export class RequestListComponent implements OnInit {
  user: User;
  roomRequests: RoomRequest[];
  isReceptionOrAdmin: boolean = false;
  roomRequestParams: RoomRequestParams;

  constructor(private accountService: AccountService, private roomRequestService: RoomRequestServiceService) {
    this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
    this.roomRequestParams = this.roomRequestService.getRoomRequestParams();
   }

  ngOnInit(): void {    
    this.getRoomRequests();
  }

  getRoomRequests(){
    this.roomRequestParams.department = this.user.roles.join(',');
    this.roomRequestParams.requestStatus = '0';
    this.roomRequestService.setRoomRequestParams(this.roomRequestParams);
    
    this.roomRequestService.getFilteredRoomRequests(this.roomRequestParams).subscribe(response => {
      this.roomRequests = response.result;
    })
  }

  setSort(filter: number){
    switch(filter){
      case 0: this.roomRequestParams.orderBy = "id";
              break;
      case 1: this.roomRequestParams.orderBy = "room";
              break;
      case 2: this.roomRequestParams.orderBy = "department";
              break;
      case 3: this.roomRequestParams.orderBy = "topic";
              break;
      case 4: this.roomRequestParams.orderBy = "subject";
              break;
      case 5: this.roomRequestParams.orderBy = "date";
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
