import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ReplaySubject } from 'rxjs';
import {map} from 'rxjs/operators';
import { environment } from 'src/environments/environment';
import { ApiRoutesConstant } from '../constants/apiRoutesConstants';
import { HotelUser } from '../models/hotelUser';
import { HotelUserParams } from '../models/hotelUserParams';
import { HotelUserWithRoles } from '../models/hotelUserWithRoles';
import { Room } from '../models/room';
import { User } from '../models/user';
import { getPaginatedResult, getPaginationHeaders } from './paginationHelper';

@Injectable({
  providedIn: 'root'
})
export class AccountService {
  baseUrl = environment.apiUrl;
  private currentUserSource = new ReplaySubject<User>(1);
  currentUser$ = this.currentUserSource.asObservable();
  userParams: HotelUserParams;

  constructor(private http: HttpClient) { 
    this.userParams = new HotelUserParams();
  }

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
    return this.http.patch<User>(this.baseUrl + ApiRoutesConstant.passwords, model).pipe(
      map((response: User) => {
        const user = response;
        if (user) {
          this.setCurrentUser(user);
        }
      })
    )
  }

  getUsers(userParams: HotelUserParams) {

    let params = getPaginationHeaders(userParams.pageNumber, userParams.pageSize);

    params = params.append('orderBy', userParams.orderBy);

    return getPaginatedResult<HotelUserWithRoles[]>(this.baseUrl + ApiRoutesConstant.adminUsers, params, this.http);    
  }

  getUser(roomNumber: string) {
    return this.http.get<HotelUser>(this.baseUrl + ApiRoutesConstant.hotelUser + roomNumber);
  }

  getUserWithRoles(roomNumber: string) {
    return this.http.get<HotelUserWithRoles>(this.baseUrl + ApiRoutesConstant.adminUsers + roomNumber)
  }

  getRooms(userParams: HotelUserParams){
    let params = getPaginationHeaders(userParams.pageNumber, userParams.pageSize);

    params = params.append('orderBy', userParams.orderBy);

    return getPaginatedResult<Room[]>(this.baseUrl + ApiRoutesConstant.rooms, params, this.http);
  }

  editGuest(model: any){
    return this.http.patch<HotelUser>(this.baseUrl + ApiRoutesConstant.rooms, model);
  }

  createUser(model: any) {
    return this.http.post<HotelUser>(this.baseUrl + ApiRoutesConstant.adminUsers, model);
  }

  editUser(model: any){
    return this.http.put<HotelUserWithRoles>(this.baseUrl + ApiRoutesConstant.adminUsers, model);
  }

  deleteUser(roomNumber: string){
    return this.http.delete(this.baseUrl + ApiRoutesConstant.adminUsers + roomNumber);
  }

  generatePassword(roomNumber: string){
    return this.http.patch<HotelUser>(this.baseUrl + ApiRoutesConstant.passwords + roomNumber, {});
  }

  getHotelUserParams(){
    return this.userParams;
  }

  setHotelUserParams(userParams: HotelUserParams){
    this.userParams = userParams;
  }

  resetHotelUserParams() {
    this.userParams = new HotelUserParams();
    return this.userParams;
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
