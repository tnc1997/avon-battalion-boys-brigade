import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { MaterialModule } from '@boys-brigade/material';
import { SharedModule } from '@boys-brigade/shared';

import { EventsRoutingModule } from './events-routing.module';
import { EventsComponent } from './pages/events/events.component';

@NgModule({
  declarations: [ EventsComponent ],
  imports: [
    CommonModule,
    EventsRoutingModule,
    MaterialModule,
    SharedModule,
  ],
})
export class EventsModule { }
