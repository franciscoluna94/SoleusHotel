import { Component, OnInit } from '@angular/core';
import { HotelUserWithRoles } from 'src/app/core/models/hotelUserWithRoles';
import { AccountService } from 'src/app/core/services/account.service';

@Component({
  selector: 'app-user-list',
  templateUrl: './user-list.component.html',
  styleUrls: ['./user-list.component.css']
})
export class UserListComponent implements OnInit {
  users: HotelUserWithRoles[];
  roles: string;

  constructor(private accountService: AccountService) {
   }

  ngOnInit(): void {    
    this.getUsers();
    
  }

  getUsers(){
    this.accountService.getUsers().subscribe(users => {
      this.users = users;
    })
  }

}
