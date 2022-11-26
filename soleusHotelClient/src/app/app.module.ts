import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavComponent } from './components/nav/nav.component';
import { HomeComponent } from './components/home/home.component';
import { HttpClientModule } from '@angular/common/http';
import { SharedModule } from './modules/shared/shared.module';
import { UserDashboardComponent } from './components/user-dashboard/user-dashboard.component';
import { UserListComponent } from './components/user-list/user-list.component';
import { RequestListComponent } from './components/request-list/request-list.component';
import { ForgotPasswordComponent } from './components/forgot-password/forgot-password.component';
import { WorkerDashboardComponent } from './components/worker-dashboard/worker-dashboard.component';

@NgModule({
  declarations: [
    AppComponent,
    NavComponent,
    HomeComponent,
    UserDashboardComponent,
    UserListComponent,
    RequestListComponent,
    ForgotPasswordComponent,
    WorkerDashboardComponent
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
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
