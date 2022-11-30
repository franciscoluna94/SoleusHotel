import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot, UrlTree } from '@angular/router';
import { map, Observable } from 'rxjs';
import { RolesConstants } from '../constants/rolesConstants';
import { AccountService } from '../services/account.service';

@Injectable({
  providedIn: 'root'
})
export class AdminGuard implements CanActivate {
  
  constructor(private accountService: AccountService, private router: Router){}

  canActivate(): Observable<boolean>  {
    return this.accountService.currentUser$.pipe(
      map(user => {
        if (user.roles.some(role => RolesConstants.admin.includes(role))){
          return true;
        }
        this.router.navigateByUrl('/');
        return false;
      })
    );
  }
  
}
