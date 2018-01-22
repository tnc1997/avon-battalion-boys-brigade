import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { InfoComponent } from './pages/info/info.component';

const ROUTES: Routes = [
  {
    component: InfoComponent,
    path: '',
  },
];

@NgModule({
  exports: [ RouterModule ],
  imports: [ RouterModule.forChild(ROUTES) ],
})
export class InfoRoutingModule { }
