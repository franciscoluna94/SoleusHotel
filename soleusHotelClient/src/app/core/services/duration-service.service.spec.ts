import { TestBed } from '@angular/core/testing';

import { DurationService } from './duration-service.service';

describe('DurationServiceService', () => {
  let service: DurationService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(DurationService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
