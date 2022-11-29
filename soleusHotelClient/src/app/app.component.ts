import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { RolesConstants } from './core/constants/rolesConstants';
import { User } from './core/models/user';
import { AccountService } from './core/services/account.service';

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
    if (this.user.roles.includes(RolesConstants.guest)){
      route = "/guest";
    } else {
      route = "/hotel/dashboard";
    }
    this.router.navigateByUrl(route);
  }
}
