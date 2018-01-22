import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { MaterialModule } from '@boys-brigade/material';
import { SharedModule } from '@boys-brigade/shared';

import { InfoRoutingModule } from './info-routing.module';
import { InfoComponent } from './pages/info/info.component';

@NgModule({
  declarations: [ InfoComponent ],
  imports: [
    CommonModule,
    InfoRoutingModule,
    MaterialModule,
    SharedModule,
  ],
})
export class InfoModule { }
