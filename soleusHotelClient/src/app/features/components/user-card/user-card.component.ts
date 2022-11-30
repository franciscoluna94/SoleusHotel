import { formatDate } from '@angular/common';
import { Component, OnInit, Renderer2 } from '@angular/core';
import { FormGroup, FormBuilder, Validators, FormArray, FormControl } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { take } from 'rxjs';
import { RolesConstants } from 'src/app/core/constants/rolesConstants';
import { HotelUserWithRoles } from 'src/app/core/models/hotelUserWithRoles';
import { User } from 'src/app/core/models/user';
import { AccountService } from 'src/app/core/services/account.service';

@Component({
  selector: 'app-user-card',
  templateUrl: './user-card.component.html',
  styleUrls: ['./user-card.component.css']
})
export class UserCardComponent implements OnInit {
  hotelUser: HotelUserWithRoles;
  roles: string[];
  editRoles: string[] = [];
  user: User;
  editUserForm: FormGroup = new FormGroup({});
  validationErrors: string[] | undefined;
  checkInOriginalDate: string;
  checkOutOriginalDate: string;


  constructor(private route: ActivatedRoute, private accountService: AccountService, private router: Router,
     private fb: FormBuilder, private toastr: ToastrService, private renderer: Renderer2) {
      this.accountService.currentUser$.pipe(take(1)).subscribe(user => this.user = user);
   }

  ngOnInit(): void {
    this.route.data.subscribe(data => {
      this.hotelUser = data['hotelUserWithRoles'];
      this.roles = RolesConstants.all;
      this.editRoles = this.editRoles.concat(this.hotelUser.userRoles);
    });
    this.formatOriginalDates();
    this.initializeForm();
    console.log(this.editRoles);
  }

  editUser(){
    this.setDateFormat();

    
    this.editUserForm.patchValue({roles: this.editRoles});

    this.accountService.editUser(this.editUserForm.value).subscribe(response => {
      this.hotelUser = response;
      this.toastr.success("User updated successfully");
    })
    this.editUserForm.clearValidators();   

  }

  initializeForm() {   

    this.editUserForm = this.fb.group({
      roomNumber: [this.hotelUser.roomNumber, Validators.required],
      password: ['', [Validators.minLength(4), Validators.maxLength(8)]],
      roles: [[], Validators.minLength(1)],     
      guestName: [this.hotelUser.guestName, Validators.required],
      checkInDate: [this.checkInOriginalDate, Validators.required],
      checkOutDate: [this.checkOutOriginalDate, Validators.required]
    });
  }

  toggleClass(event: any, className: string, role: string) {
    const hasClass = event.target.classList.contains(className);
    this.editUserForm.markAsDirty();

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

  private formatOriginalDates() {
    this.checkInOriginalDate = formatDate(this.hotelUser.checkInDate,'d/M/y', "en-US");
    this.checkOutOriginalDate = formatDate(this.hotelUser.checkOutDate,'d/M/y', "en-US");
  }

  private setDateFormat(){
    
    let checkInValue = this.editUserForm.get("checkInDate").value;
    let checkOutValue = this.editUserForm.get("checkOutDate").value;

    if (checkInValue === this.checkInOriginalDate) {

      let checkInDateParts = checkInValue.toString().split("/");
      let checkInDateFormatted = new Date(+checkInDateParts[2], checkInDateParts[1] - 1, +checkInDateParts[0]); 
      this.editUserForm.patchValue({checkInDate: checkInDateFormatted});

    } 
    
    if (checkOutValue === this.checkOutOriginalDate) {

      let checkOutDateParts = checkOutValue.toString().split("/");
      let checkOutDateFormatted = new Date(+checkOutDateParts[2], checkOutDateParts[1] - 1, +checkOutDateParts[0]);
      this.editUserForm.patchValue({checkOutDate: checkOutDateFormatted});
    }

  }

}
