import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { CompaniesComponent } from './pages/companies/companies.component';

const ROUTES: Routes = [
  {
    component: CompaniesComponent,
    path: '',
  },
];

@NgModule({
  exports: [ RouterModule ],
  imports: [ RouterModule.forChild(ROUTES) ],
})
export class CompaniesRoutingModule { }
