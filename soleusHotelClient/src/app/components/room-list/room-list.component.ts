import { Component, OnInit } from '@angular/core';
import { take } from 'rxjs';
import { Room } from 'src/app/models/room';
import { User } from 'src/app/models/user';
import { AccountService } from 'src/app/services/account.service';
import { RoomService } from 'src/app/services/room.service';

@Component({
  selector: 'app-room-list',
  templateUrl: './room-list.component.html',
  styleUrls: ['./room-list.component.css']
})
export class RoomListComponent implements OnInit {
  user: User;
  rooms: Room[];

  constructor(private roomService: RoomService, private accountService: AccountService) {
    this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
   }

  ngOnInit(): void {    
    this.getRooms();
  }

  getRooms(){
    this.roomService.getRooms().subscribe(rooms => {
      this.rooms = rooms;
    })
  }

}
