import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
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
  user: User;
  forgotPasswordForm: FormGroup = new FormGroup({});
  validationErrors: string[] | undefined;

  constructor(private accountService: AccountService, private router: Router, private fb: FormBuilder) { }

  ngOnInit(): void {
    this.initializeForm();
  }

  initializeForm() {
    this.forgotPasswordForm = this.fb.group({
      roomNumber: ['', Validators.required],
      guestName: ['', Validators.required],
      password: ['', [Validators.required, 
        Validators.minLength(4), Validators.maxLength(8)]],      
    });
  }

  forgotPassword() {
    this.accountService.forgotPassword(this.forgotPasswordForm.value).subscribe(() => {
      this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
      this.router.navigateByUrl("/guest")
    });
  }

}
