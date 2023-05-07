import { TestBed } from '@angular/core/testing';

import { RoomRequestService } from './room-request-service.service';

describe('RoomRequestServiceService', () => {
  let service: RoomRequestService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RoomRequestService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
