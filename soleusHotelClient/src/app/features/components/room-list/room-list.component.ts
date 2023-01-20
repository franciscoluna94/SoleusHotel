import { Component, OnInit } from '@angular/core';
import { take } from 'rxjs';
import { RolesConstants } from 'src/app/core/constants/rolesConstants';
import { HotelUserParams } from 'src/app/core/models/hotelUserParams';
import { Room } from 'src/app/core/models/room';
import { User } from 'src/app/core/models/user';
import { AccountService } from 'src/app/core/services/account.service';

@Component({
  selector: 'app-room-list',
  templateUrl: './room-list.component.html',
  styleUrls: ['./room-list.component.css']
})
export class RoomListComponent implements OnInit {
  user: User;
  rooms: Room[];
  isReceptionOrAdmin: boolean = false;
  userParams: HotelUserParams;

  constructor(private accountService: AccountService) {
    this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
    this.userParams = this.accountService.getHotelUserParams();
   }

  ngOnInit(): void {    
    this.getRooms();
    this.checkRole();
  }

  getRooms(){
    this.accountService.setHotelUserParams(this.userParams);
    
    this.accountService.getRooms(this.userParams).subscribe(response => {
      this.rooms = response.result;
    })
  }

  checkRole(){
    this.isReceptionOrAdmin = this.user.roles.some(role => RolesConstants.receptionAndAdmin.includes(role))
  }

  setSort(filter: number){
    switch(filter){
      case 0: this.userParams.orderBy = "room";
              break;
      case 1: this.userParams.orderBy = "name";
              break;
      case 2: this.userParams.orderBy = "checkin";
              break;
      case 3: this.userParams.orderBy = "checkout";
              break;
      case 4: this.userParams.orderBy = "requests";
              break;
    }    
    this.getRooms();
  }

  pageChanged(event: any){
    this.userParams.pageNumber = event.page;
    this.accountService.setHotelUserParams(this.userParams);
    this.getRooms();
  }

  resetFilters(){
    this.userParams = this.accountService.resetHotelUserParams();
    this.getRooms();
  }

}
