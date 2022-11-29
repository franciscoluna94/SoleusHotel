import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ReplaySubject } from 'rxjs';
import {map} from 'rxjs/operators';
import { environment } from 'src/environments/environment';
import { ApiRoutesConstant } from '../constants/apiRoutesConstants';
import { HotelUser } from '../models/hotelUser';
import { Room } from '../models/room';
import { User } from '../models/user';

@Injectable({
  providedIn: 'root'
})
export class AccountService {
  baseUrl = environment.apiUrl;
  private currentUserSource = new ReplaySubject<User>(1);
  currentUser$ = this.currentUserSource.asObservable();

  constructor(private http: HttpClient) { }

  login(model: any) {
    return this.http.post<User>(this.baseUrl + ApiRoutesConstant.login, model).pipe(
      map((response: User) => {
        const user = response;
        if (user) {
          this.setCurrentUser(user);
        }
      })
    )
  }

  logout() {
    localStorage.removeItem('user');
    this.currentUserSource.next(null);
  }

  forgotPassword(model: any){
    return this.http.patch<User>(this.baseUrl + ApiRoutesConstant.forgotPassword, model).pipe(
      map((response: User) => {
        const user = response;
        if (user) {
          this.setCurrentUser(user);
        }
      })
    )
  }

  getUser(roomNumber: string) {
    return this.http.get<HotelUser>(this.baseUrl + ApiRoutesConstant.hotelUser + roomNumber)
  }

  getRooms(){
    return this.http.get<Room[]>(this.baseUrl + ApiRoutesConstant.roomList);
  }

  editUser(model: any){
    return this.http.patch<HotelUser>(this.baseUrl + ApiRoutesConstant.editGuest, model);
  }

  generatePassword(roomNumber: string){
    return this.http.patch<HotelUser>(this.baseUrl + ApiRoutesConstant.generatePassword + roomNumber, {});
  }

  setCurrentUser(user: User) {
    user.roles = [];
    const roles = this.getDecodedToken(user.token).role;
    Array.isArray(roles) ? user.roles = roles : user.roles.push(roles);
    localStorage.setItem('user', JSON.stringify(user));
    this.currentUserSource.next(user);
  }

  getDecodedToken(token: string) {
    return JSON.parse(atob(token.split('.')[1]))
  }
  
}
