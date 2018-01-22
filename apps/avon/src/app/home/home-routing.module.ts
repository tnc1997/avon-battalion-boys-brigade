import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { HomeComponent } from './pages/home/home.component';

const ROUTES: Routes = [
  {
    component: HomeComponent,
    path: '',
  },
];

@NgModule({
  exports: [ RouterModule ],
  imports: [ RouterModule.forChild(ROUTES) ],
})
export class HomeRoutingModule { }
