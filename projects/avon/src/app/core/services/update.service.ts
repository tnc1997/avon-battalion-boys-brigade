import {ApplicationRef, Injectable} from '@angular/core';
import {SwUpdate} from '@angular/service-worker';
import {concat, interval} from 'rxjs';
import {first} from 'rxjs/operators';

import {CoreModule} from '../core.module';

@Injectable({
  providedIn: CoreModule
})
export class UpdateService {
  constructor(applicationRef: ApplicationRef, swUpdate: SwUpdate) {
    // Allows the app to stabilize first, before starting polling for updates with `interval()`.
    const appIsStable$ = applicationRef.isStable.pipe(first(isStable => isStable));
    const everySixHours$ = interval(6 * 60 * 60 * 1000);
    const everySixHoursOnceAppIsStable$ = concat(appIsStable$, everySixHours$);

    everySixHoursOnceAppIsStable$.subscribe(() => swUpdate.checkForUpdate());
  }
}
