import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PendingRequestListComponent } from './request-list.component';

describe('RequestListComponent', () => {
  let component: PendingRequestListComponent;
  let fixture: ComponentFixture<PendingRequestListComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PendingRequestListComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PendingRequestListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
