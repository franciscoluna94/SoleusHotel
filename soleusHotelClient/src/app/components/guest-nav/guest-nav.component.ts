import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { take } from 'rxjs';
import { User } from 'src/app/models/user';
import { AccountService } from 'src/app/services/account.service';

@Component({
  selector: 'app-guest-nav',
  templateUrl: './guest-nav.component.html',
  styleUrls: ['./guest-nav.component.css']
})
export class GuestNavComponent implements OnInit {
  isDropup = true;
  isCollapsed = false;
  user: User;

  constructor(private accountService: AccountService, private router: Router) {
    this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
   }

  ngOnInit(): void {
  }

  logout() {
    this.accountService.logout();
    this.router.navigateByUrl("/");
  }
}
