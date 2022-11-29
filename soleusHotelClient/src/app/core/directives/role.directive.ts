import { Directive, Input, TemplateRef, ViewContainerRef } from '@angular/core';
import { take } from 'rxjs';
import { User } from '../models/user';
import { AccountService } from '../services/account.service';

@Directive({
  selector: '[appRole]'
})
export class RoleDirective {
  @Input() appRole: string[];
  user: User;
  
  constructor(private viewContainerRef: ViewContainerRef, private templateRef: TemplateRef<any>,
    private accountService: AccountService) {
      this.accountService.currentUser$.pipe(take(1)).subscribe(user => {
        this.user = user;
      })
     }

  ngOnInit(): void {
    if (!this.user?.roles || this.user == null){
      this.viewContainerRef.clear();
      return;
    }

    if (this.user?.roles.some(r => this.appRole.includes(r))){
      this.viewContainerRef.createEmbeddedView(this.templateRef);
    } else {
      this.viewContainerRef.clear();
    }
  }

}
