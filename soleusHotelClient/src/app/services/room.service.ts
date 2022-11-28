import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ReplaySubject } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Room } from '../models/room';
import { User } from '../models/user';

@Injectable({
  providedIn: 'root'
})
export class RoomService {
  baseUrl = environment.apiUrl;
  private currentUserSource = new ReplaySubject<User>(1);
  currentUser$ = this.currentUserSource.asObservable();

  constructor(private http: HttpClient) { }

  getRooms(){
    return this.http.get<Room[]>(this.baseUrl + 'room');
  }
}
