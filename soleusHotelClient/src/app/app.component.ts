import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { take } from 'rxjs';
import { environment } from 'src/environments/environment';
import { User } from './models/user';
import { AccountService } from './services/account.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  user: User;

  constructor(private accountService : AccountService, private router: Router) {
  }
  

  ngOnInit() {
    this.setCurrentUser();
    this.redirectIfLogged();
  }

  setCurrentUser() {
    const user: User = JSON.parse(localStorage.getItem('user'));
    if (user){
      this.accountService.setCurrentUser(user);
      this.user = user;
    }
  }

  redirectIfLogged(){
    if (!this.user){
      this.router.navigateByUrl("/");
      return;
    }
    let route;
    if (this.user.roles.includes("Guest")){
      route = "/guest";
    } else {
      route = "/worker/dashboard";
    }
    this.router.navigateByUrl(route);
  }
}
