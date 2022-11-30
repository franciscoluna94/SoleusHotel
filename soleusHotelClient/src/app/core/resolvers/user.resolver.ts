import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot
} from '@angular/router';
import { Observable } from 'rxjs';
import { HotelUserWithRoles } from '../models/hotelUserWithRoles';
import { AccountService } from '../services/account.service';

@Injectable({
  providedIn: 'root'
})
export class UserResolver implements Resolve<HotelUserWithRoles> {
  
  constructor(private accountService: AccountService){}


  resolve(route: ActivatedRouteSnapshot): Observable<HotelUserWithRoles> {
    return this.accountService.getUserWithRoles(route.paramMap.get('roomNumber'));
}
}
