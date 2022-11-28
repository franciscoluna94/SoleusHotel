import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { WorkerNavComponent } from './components/worker-nav/worker-nav.component';
import { HomeComponent } from './components/home/home.component';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { SharedModule } from './modules/shared/shared.module';
import { GuestDashboardComponent} from './components/guest-dashboard/guest-dashboard.component';
import { UserListComponent } from './components/user-list/user-list.component';
import { RequestListComponent } from './components/request-list/request-list.component';
import { ForgotPasswordComponent } from './components/forgot-password/forgot-password.component';
import { WorkerDashboardComponent } from './components/worker-dashboard/worker-dashboard.component';
import { UserCardComponent } from './components/user-card/user-card.component';
import { ErrorInterceptor } from './interceptors/error.interceptor';
import { GuestNavComponent } from './components/guest-nav/guest-nav.component';
import { JwtInterceptor } from './interceptors/jwt.interceptor';
import { TextInputComponent } from './components/forms/text-input/text-input.component';
import { RoomListComponent } from './components/room-list/room-list.component';

@NgModule({
  declarations: [
    AppComponent,
    WorkerNavComponent,
    HomeComponent,
    GuestDashboardComponent,
    UserListComponent,
    RequestListComponent,
    ForgotPasswordComponent,
    WorkerDashboardComponent,
    UserCardComponent,
    GuestNavComponent,
    TextInputComponent,
    RoomListComponent
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
