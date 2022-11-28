import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ForgotPasswordComponent } from './components/forgot-password/forgot-password.component';
import { HomeComponent } from './components/home/home.component';
import { WorkerNavComponent } from './components/worker-nav/worker-nav.component';
import { RequestListComponent } from './components/request-list/request-list.component';
import { UserCardComponent } from './components/user-card/user-card.component';
import { GuestDashboardComponent } from './components/guest-dashboard/guest-dashboard.component';
import { UserListComponent } from './components/user-list/user-list.component';
import { WorkerDashboardComponent } from './components/worker-dashboard/worker-dashboard.component';
import { AuthGuard } from './guards/auth.guard';
import { GuestNavComponent } from './components/guest-nav/guest-nav.component';
import { RoomListComponent } from './components/room-list/room-list.component';
import { RoomResolver } from './resolvers/room.resolver';

const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'forgot-password', component: ForgotPasswordComponent}, 
  {
    path: '',
    runGuardsAndResolvers: 'always',
    canActivate: [AuthGuard],
    children: [
    {path: 'worker', component: WorkerNavComponent, children: [
      {path: '', redirectTo:'worker/dashboard', pathMatch: 'full'},
      {path: 'dashboard', component: WorkerDashboardComponent},
      {path: 'roomrequests', component: RequestListComponent},
      {path: 'rooms', component: RoomListComponent},
      {path: 'rooms/:roomNumber', component: UserCardComponent,  resolve: {hotelUser: RoomResolver}},        
      {path: 'guests', component: UserListComponent},
      
    ]},
    {path: 'guest', component: GuestNavComponent, children: [
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
