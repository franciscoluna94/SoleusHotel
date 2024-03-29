import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { take } from 'rxjs';
import { User } from 'src/app/core/models/user';
import { AccountService } from 'src/app/core/services/account.service';

@Component({
  selector: 'app-nav',
  templateUrl: './worker-nav.component.html',
  styleUrls: ['./worker-nav.component.css']
})
export class WorkerNavComponent implements OnInit {
  isDropup = true;
  isCollapsedRoomRequests = true;
  isCollapsedUsers = true;
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
