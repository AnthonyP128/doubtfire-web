import { TestBed } from '@angular/core/testing';

import { TaskCommentService } from './task-comment.service';

describe('TaskCommentService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: TaskCommentService = TestBed.inject(TaskCommentService);
    expect(service).toBeTruthy();
  });
});
