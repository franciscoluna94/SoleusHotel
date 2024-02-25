import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EndedRequestListComponent } from './ended-request-list.component';

describe('EndedRequestListComponent', () => {
  let component: EndedRequestListComponent;
  let fixture: ComponentFixture<EndedRequestListComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EndedRequestListComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EndedRequestListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
