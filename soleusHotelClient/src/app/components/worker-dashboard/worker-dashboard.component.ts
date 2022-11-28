import { Component, OnInit } from '@angular/core';
import { take } from 'rxjs';
import { User } from 'src/app/models/user';
import { AccountService } from 'src/app/services/account.service';

@Component({
  selector: 'app-worker-dashboard',
  templateUrl: './worker-dashboard.component.html',
  styleUrls: ['./worker-dashboard.component.css']
})
export class WorkerDashboardComponent implements OnInit {
  user: User

  constructor(private accountService: AccountService) { 
    this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
  }

  ngOnInit(): void {
  }

}
