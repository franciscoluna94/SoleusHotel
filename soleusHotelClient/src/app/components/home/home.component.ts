import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { take } from 'rxjs';
import { User } from 'src/app/models/user';
import { AccountService } from 'src/app/services/account.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  model: any = {};
  user: User;

  constructor(public accountService: AccountService, private router: Router) { }

  ngOnInit(): void {
  }

  login() {
    this.accountService.login(this.model).subscribe(() => {
      this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
      if (this.user.roles.includes("Guest")){
        this.router.navigateByUrl("/guest");
      } else {
        this.router.navigateByUrl("/worker/dashboard");
      }      
    });
  }

  

}
