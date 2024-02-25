import { NgModule } from '@angular/core';
import { ExtraOptions, RouterModule, Routes } from '@angular/router';
import { ForgotPasswordComponent } from './features/components/forgot-password/forgot-password.component';
import { HomeComponent } from './core/components/home/home.component';
import { WorkerNavComponent } from './core/components/worker-nav/worker-nav.component';
import { PendingRequestListComponent } from './features/components/pending-request-list/request-list.component';
import { RoomCardComponent } from './features/components/room-card/room-card.component';
import { GuestDashboardComponent } from './features/components/guest-dashboard/guest-dashboard.component';
import { UserListComponent } from './features/components/user-list/user-list.component';
import { WorkerDashboardComponent } from './features/components/worker-dashboard/worker-dashboard.component';
import { AuthGuard } from './core/guards/auth.guard';
import { GuestNavComponent } from './core/components/guest-nav/guest-nav.component';
import { RoomListComponent } from './features/components/room-list/room-list.component';
import { RoomResolver } from './core/resolvers/room.resolver';
import { EmployeeGuard } from './core/guards/employee.guard';
import { GuestGuard } from './core/guards/guest.guard';
import { UserCreateComponent } from './features/components/user-create/user-create.component';
import { AdminGuard } from './core/guards/admin.guard';
import { UserCardComponent } from './features/components/user-card/user-card.component';
import { UserResolver } from './core/resolvers/user.resolver';
import { EndedRequestListComponent } from './features/components/ended-request-list/ended-request-list.component';

const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'forgot-password', component: ForgotPasswordComponent}, 
  {
    path: '',
    runGuardsAndResolvers: 'always',
    canActivate: [AuthGuard],
    children: [
    {path: 'hotel', component: WorkerNavComponent, canActivate: [EmployeeGuard], children: [
      {path: '', redirectTo:'hotel/dashboard', pathMatch: 'full'},
      {path: 'dashboard', component: WorkerDashboardComponent},
      {path: 'roomrequests/pending', component: PendingRequestListComponent},
      {path: 'roomrequests/ended', component: EndedRequestListComponent},
      {path: 'rooms', component: RoomListComponent},
      {path: 'rooms/:roomNumber', component: RoomCardComponent,  resolve: {hotelUser: RoomResolver}},        
      {path: 'users', component: UserListComponent, canActivate: [AdminGuard]},
      {path: 'users/create', component: UserCreateComponent, canActivate: [AdminGuard]},
      {path: 'users/:roomNumber', component: UserCardComponent, resolve: {hotelUserWithRoles: UserResolver}, canActivate: [AdminGuard]},
      
      
      
    ]},
    {path: 'guest', component: GuestNavComponent, canActivate:[GuestGuard], children: [
      {path: '', redirectTo:'guest/dashboard', pathMatch: 'full'},
      {path: 'dashboard', component: GuestDashboardComponent}, 
    ]},    
       
    ]
  }
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
