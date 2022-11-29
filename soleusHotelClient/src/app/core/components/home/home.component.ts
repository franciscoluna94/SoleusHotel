import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { take } from 'rxjs';
import { User } from 'src/app/core/models/user';
import { AccountService } from 'src/app/core/services/account.service';
import { RolesConstants } from '../../constants/rolesConstants';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  user: User;
  loginForm: FormGroup = new FormGroup({});
  validationErrors: string[] | undefined;

  constructor(public accountService: AccountService, private router: Router, private fb: FormBuilder) { }

  ngOnInit(): void {
    this.initializeForm();
  }

  initializeForm() {
    this.loginForm = this.fb.group({
      roomNumber: ['', Validators.required],
      password: ['', [Validators.required, 
        Validators.minLength(4), Validators.maxLength(8)]],      
    });
  }

  login() {
    this.accountService.login(this.loginForm.value).subscribe(() => {
      this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
      if (this.user.roles.includes(RolesConstants.guest)){
        this.router.navigateByUrl("/guest");
      } else if (this.user.roles.some(role => RolesConstants.employees.includes(role))) {
        this.router.navigateByUrl("/hotel/dashboard");
      } 
    });
  }

  

}
