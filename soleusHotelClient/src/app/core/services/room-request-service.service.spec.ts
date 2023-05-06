import { TestBed } from '@angular/core/testing';

import { RoomRequestServiceService } from './room-request-service.service';

describe('RoomRequestServiceService', () => {
  let service: RoomRequestServiceService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RoomRequestServiceService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
