import { Component, OnInit } from '@angular/core';
import { HotelUserParams } from 'src/app/core/models/hotelUserParams';
import { HotelUserWithRoles } from 'src/app/core/models/hotelUserWithRoles';
import { Pagination } from 'src/app/core/models/pagination';
import { AccountService } from 'src/app/core/services/account.service';

@Component({
  selector: 'app-user-list',
  templateUrl: './user-list.component.html',
  styleUrls: ['./user-list.component.css']
})
export class UserListComponent implements OnInit {
  users: HotelUserWithRoles[];
  roles: string;
  pagination: Pagination;
  userParams: HotelUserParams;

  constructor(private accountService: AccountService) {
    this.userParams = this.accountService.getHotelUserParams();
   }

  ngOnInit(): void {    
    this.getUsers();
    
  }

  getUsers(){
    this.accountService.setHotelUserParams(this.userParams);

    this.accountService.getUsers(this.userParams).subscribe(response => {
      this.users = response.result;
      this.pagination = response.pagination;
    })
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
    }    
    this.getUsers();
  }

  resetFilters(){
    this.userParams = this.accountService.resetHotelUserParams();
    this.getUsers();
  }

  pageChanged(event: any){
    this.userParams.pageNumber = event.page;
    this.accountService.setHotelUserParams(this.userParams);
    this.getUsers();
  }

  deleteUser(roomNumber: string){
    this.accountService.deleteUser(roomNumber).subscribe();
    this.getUsers();
  }

}
