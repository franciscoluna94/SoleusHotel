import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { HotelUser } from 'src/app/models/hotelUser';

@Component({
  selector: 'app-user-card',
  templateUrl: './user-card.component.html',
  styleUrls: ['./user-card.component.css']
})
export class UserCardComponent implements OnInit {
  hotelUser: HotelUser;

  constructor(private route: ActivatedRoute) {
    
   }

  ngOnInit(): void {
    this.route.data.subscribe(data => {
      this.hotelUser = data['hotelUser'];
    })
    console.log(this.hotelUser)
  }

}
