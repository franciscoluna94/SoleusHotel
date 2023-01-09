import { Component, OnInit, Renderer2 } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { take } from 'rxjs';
import { RolesConstants } from 'src/app/core/constants/rolesConstants';
import { HotelUserWithRoles } from 'src/app/core/models/hotelUserWithRoles';
import { User } from 'src/app/core/models/user';
import { AccountService } from 'src/app/core/services/account.service';

@Component({
  selector: 'app-user-create',
  templateUrl: './user-create.component.html',
  styleUrls: ['./user-create.component.css']
})
export class UserCreateComponent implements OnInit {
  hotelUser: HotelUserWithRoles;
  roles: string[];
  editRoles: string[] = [];
  user: User;
  createUserForm: FormGroup = new FormGroup({});
  validationErrors: string[] | undefined;
  checkInOriginalDate: string;
  checkOutOriginalDate: string;
  
  constructor(private accountService: AccountService, private router: Router,
    private fb: FormBuilder, private toastr: ToastrService, private renderer: Renderer2) {
     this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
  }

  ngOnInit(): void {
    this.roles = RolesConstants.all;
    this.initializeForm();    
  }

  initializeForm() {   
    this.createUserForm = this.fb.group({
      roomNumber: ['', Validators.required],
      password: ['', [Validators.minLength(4), Validators.maxLength(8), Validators.required]],
      roles: [[], Validators.minLength(1)],     
      guestName: ['', Validators.required],
      checkInDate: [Date, Validators.required],
      checkOutDate: [Date, Validators.required]
    });
  }

  createUser(){
    this.createUserForm.patchValue({roles: this.editRoles});

    this.accountService.createUser(this.createUserForm.value).subscribe(response => {
      this.toastr.success("User createds successfully");
    })
    this.createUserForm.clearValidators();   
  }

  toggleClass(event: any, className: string, role: string) {
    const hasClass = event.target.classList.contains(className);
    this.createUserForm.markAsDirty();

    if (hasClass) {
        this.renderer.removeClass(event.target, className);
        this.removeRole(role);
    } else {
        this.renderer.addClass(event.target, className);
        if (!this.editRoles.includes(role)){
          this.editRoles.push(role);
        }        
    }
  }

  private removeRole(role) {
    
    let i = this.editRoles.length;  
    while (i--) {
      if (this.editRoles[i] === role) {
        this.editRoles.splice(i, 1);
      }
    }
  }

}
