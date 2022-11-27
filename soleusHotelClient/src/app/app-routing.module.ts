import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ForgotPasswordComponent } from './components/forgot-password/forgot-password.component';
import { HomeComponent } from './components/home/home.component';
import { NavComponent } from './components/nav/nav.component';
import { RequestListComponent } from './components/request-list/request-list.component';
import { UserCardComponent } from './components/user-card/user-card.component';
import { UserDashboardComponent } from './components/user-dashboard/user-dashboard.component';
import { UserListComponent } from './components/user-list/user-list.component';
import { WorkerDashboardComponent } from './components/worker-dashboard/worker-dashboard.component';
import { AuthGuard } from './guards/auth.guard';

const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'forgot-password', component: ForgotPasswordComponent}, 
  {
    path: '',
    runGuardsAndResolvers: 'always',
    canActivate: [AuthGuard],
    children: [
    {path: 'worker', component: NavComponent, children: [
      {path: '', redirectTo:'worker/dashboard', pathMatch: 'full'},
      {path: 'dashboard', component: WorkerDashboardComponent},
      {path: 'roomrequests', component: RequestListComponent},    
      {path: 'guests', component: UserListComponent},
      {path: 'guests/guest', component: UserCardComponent}
      
    ]},
    {path: 'guest', component: UserDashboardComponent},    
    ]
  }
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
