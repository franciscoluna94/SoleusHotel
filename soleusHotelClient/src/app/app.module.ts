import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { WorkerNavComponent } from './core/components/worker-nav/worker-nav.component';
import { HomeComponent } from './core/components/home/home.component';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { SharedModule } from './shared/shared.module';
import { GuestDashboardComponent} from './features/components/guest-dashboard/guest-dashboard.component';
import { UserListComponent } from './features/components/user-list/user-list.component';
import { PendingRequestListComponent } from './features/components/pending-request-list/request-list.component';
import { ForgotPasswordComponent } from './features/components/forgot-password/forgot-password.component';
import { WorkerDashboardComponent } from './features/components/worker-dashboard/worker-dashboard.component';
import { RoomCardComponent } from './features/components/room-card/room-card.component';
import { ErrorInterceptor } from './core/interceptors/error.interceptor';
import { GuestNavComponent } from './core/components/guest-nav/guest-nav.component';
import { JwtInterceptor } from './core/interceptors/jwt.interceptor';
import { TextInputComponent } from './shared/components/text-input/text-input.component';
import { RoomListComponent } from './features/components/room-list/room-list.component';
import { DateInputComponent } from './shared/components/date-input/date-input.component';
import { RoleDirective } from './core/directives/role.directive';
import { UserCreateComponent } from './features/components/user-create/user-create.component';
import { UserCardComponent } from './features/components/user-card/user-card.component';
import { EndedRequestListComponent } from './features/components/ended-request-list/ended-request-list.component';

@NgModule({
  declarations: [
    AppComponent,
    WorkerNavComponent,
    HomeComponent,
    GuestDashboardComponent,
    UserListComponent,
    PendingRequestListComponent,
    ForgotPasswordComponent,
    WorkerDashboardComponent,
    RoomCardComponent,
    GuestNavComponent,
    TextInputComponent,
    RoomListComponent,
    DateInputComponent,
    RoleDirective,
    UserCreateComponent,
    UserCardComponent,
    EndedRequestListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    BrowserAnimationsModule,
    FormsModule,
    ReactiveFormsModule,
    SharedModule,
  ],
  providers: [
    {provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true},
    {provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true},
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
