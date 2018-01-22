import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { EventsComponent } from './pages/events/events.component';

const ROUTES: Routes = [
  {
    component: EventsComponent,
    path: '',
  },
];

@NgModule({
  exports: [ RouterModule ],
  imports: [ RouterModule.forChild(ROUTES) ],
})
export class EventsRoutingModule { }
