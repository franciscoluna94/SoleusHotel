import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot
} from '@angular/router';
import { Observable } from 'rxjs';
import { HotelUser } from '../models/hotelUser';
import { AccountService } from '../services/account.service';

@Injectable({
  providedIn: 'root'
})
export class RoomResolver implements  Resolve<HotelUser> {
  
  constructor(private accountService: AccountService){}


  resolve(route: ActivatedRouteSnapshot): Observable<HotelUser> {
    return this.accountService.getUser(route.paramMap.get('roomNumber'));
}
}
