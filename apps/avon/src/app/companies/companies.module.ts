import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { MaterialModule } from '@boys-brigade/material';
import { SharedModule } from '@boys-brigade/shared';

import { CompaniesRoutingModule } from './companies-routing.module';
import { CompaniesComponent } from './pages/companies/companies.component';

@NgModule({
  declarations: [ CompaniesComponent ],
  imports: [
    CommonModule,
    CompaniesRoutingModule,
    MaterialModule,
    SharedModule,
  ],
})
export class CompaniesModule { }
