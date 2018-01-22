import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const ROUTES: Routes = [
  {
    path: '',
    pathMatch: 'full',
    redirectTo: '/home',
  },
  {
    loadChildren: './home/home.module#HomeModule',
    path: 'home',
  },
  {
    loadChildren: './info/info.module#InfoModule',
    path: 'info',
  },
  {
    loadChildren: './companies/companies.module#CompaniesModule',
    path: 'companies',
  },
  {
    loadChildren: './events/events.module#EventsModule',
    path: 'events',
  },
];

@NgModule({
  exports: [ RouterModule ],
  imports: [ RouterModule.forRoot(ROUTES) ],
})
export class AppRoutingModule { }
