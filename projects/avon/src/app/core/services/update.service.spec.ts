import { TestBed } from "@angular/core/testing";
import { SwUpdate } from "@angular/service-worker";

import { UpdateService } from "./update.service";

describe("UpdateService", () => {
  beforeEach(() => {
    const swUpdate = jasmine.createSpyObj("SwUpdate", ["checkForUpdate"]);

    TestBed.configureTestingModule({
      providers: [{ provide: SwUpdate, useValue: swUpdate }, UpdateService]
    });
  });

  it("should be created", () => {
    const service: UpdateService = TestBed.get(UpdateService);
    expect(service).toBeTruthy();
  });
});
