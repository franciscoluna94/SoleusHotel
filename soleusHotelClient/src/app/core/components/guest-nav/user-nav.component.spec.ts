import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GuestNavComponent } from './guest-nav.component';

describe('UserNavComponent', () => {
  let component: GuestNavComponent;
  let fixture: ComponentFixture<GuestNavComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GuestNavComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(GuestNavComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
