import { Injectable } from '@angular/core';
import { CanActivate, Router } from '@angular/router';
import { map, Observable } from 'rxjs';
import { RolesConstants } from '../constants/rolesConstants';
import { AccountService } from '../services/account.service';

@Injectable({
  providedIn: 'root'
})
export class EmployeeGuard implements CanActivate {
  
  constructor(private accountService: AccountService, private router: Router){}

  canActivate(): Observable<boolean>  {
    return this.accountService.currentUser$.pipe(
      map(user => {
        if (user.roles.some(role => RolesConstants.employees.includes(role))){
          return true;
        }
        this.router.navigateByUrl('/');
        return false;
      })
    );
  }
  
}
