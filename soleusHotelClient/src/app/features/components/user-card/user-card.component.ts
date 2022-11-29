import { formatDate } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { HotelUser } from 'src/app/core/models/hotelUser';
import { User } from 'src/app/core/models/user';
import { AccountService } from 'src/app/core/services/account.service';

@Component({
  selector: 'app-user-card',
  templateUrl: './user-card.component.html',
  styleUrls: ['./user-card.component.css']
})
export class UserCardComponent implements OnInit {
  hotelUser: HotelUser;
  user: User;
  editUserForm: FormGroup = new FormGroup({});
  validationErrors: string[] | undefined;
  isEditable = false;
  generatedPassword = "Password";
  checkInOriginalDate: string;
  checkOutOriginalDate: string;


  constructor(private route: ActivatedRoute, private accountService: AccountService, private router: Router,
     private fb: FormBuilder, private toastr: ToastrService) {
   }

  ngOnInit(): void {
    this.route.data.subscribe(data => {
      this.hotelUser = data['hotelUser'];
    });
    this.formatOriginalDates();
    this.initializeForm();
  }

  editUser(){
    this.setDateFormat();
    this.accountService.editUser(this.editUserForm.value).subscribe(response => {
      this.hotelUser = response;
      this.toastr.success("Information updated successfully");
    })
    this.editUserForm.clearValidators();
    

  }

  generatePassword(){
    this.accountService.generatePassword(this.hotelUser.roomNumber).subscribe(response => {
      this.hotelUser = response;
      this.generatedPassword = this.hotelUser.password;
      this.initializeForm();
    })
  }

  initializeForm() {   

    this.editUserForm = this.fb.group({
      roomNumber: [this.hotelUser.roomNumber, Validators.required],
      guestName: [this.hotelUser.guestName, Validators.required],     
      checkInDate: [this.checkInOriginalDate, Validators.required],
      checkOutDate: [this.checkOutOriginalDate, Validators.required]
    });
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

    } else if (checkOutValue === this.checkOutOriginalDate) {

      let checkOutDateParts = checkOutValue.toString().split("/");
      let checkOutDateFormatted = new Date(+checkOutDateParts[2], checkOutDateParts[1] - 1, +checkOutDateParts[0]);
      this.editUserForm.patchValue({checkOutDate: checkOutDateFormatted});
    }

  }

}
