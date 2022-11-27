import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { take } from 'rxjs';
import { User } from 'src/app/models/user';
import { AccountService } from 'src/app/services/account.service';

@Component({
  selector: 'app-forgot-password',
  templateUrl: './forgot-password.component.html',
  styleUrls: ['./forgot-password.component.css']
})
export class ForgotPasswordComponent implements OnInit {
  model: any = {};
  user: User;

  constructor(private accountService: AccountService, private router: Router) { }

  ngOnInit(): void {
  }

  forgotPassword() {
    this.accountService.forgotPassword(this.model).subscribe(() => {
      this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
      this.router.navigateByUrl("/guest")
    });
  }

}
