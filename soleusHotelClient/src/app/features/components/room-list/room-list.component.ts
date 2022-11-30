import { Component, OnInit } from '@angular/core';
import { take } from 'rxjs';
import { RolesConstants } from 'src/app/core/constants/rolesConstants';
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

  constructor(private accountService: AccountService) {
    this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
   }

  ngOnInit(): void {    
    this.getRooms();
    this.checkRole();
  }

  getRooms(){
    this.accountService.getRooms().subscribe(rooms => {
      this.rooms = rooms;
    })
  }

  checkRole(){
    this.isReceptionOrAdmin = this.user.roles.some(role => RolesConstants.receptionAndAdmin.includes(role))
  }

}
