import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';

import {SharedModule} from '../shared/shared.module';
import {CompaniesComponent} from './components/companies/companies.component';

const routes: Routes = [
  {path: '', component: CompaniesComponent}
];

@NgModule({
  declarations: [
    CompaniesComponent
  ],
  imports: [
    RouterModule.forChild(routes),
    SharedModule
  ]
})
export class CompanyModule {
}
