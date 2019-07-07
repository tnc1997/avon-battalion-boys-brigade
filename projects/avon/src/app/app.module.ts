import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';

import {CoreModule} from './core/core.module';
import {AppComponent} from './app.component';

const routes: Routes = [
  {path: 'about', loadChildren: () => import('./about/about.module').then(module => module.AboutModule)},
  {path: 'companies', loadChildren: () => import('./company/company.module').then(module => module.CompanyModule)},
  {path: 'events', loadChildren: () => import('./event/event.module').then(module => module.EventModule)},
  {path: 'home', loadChildren: () => import('./home/home.module').then(module => module.HomeModule)},
  {path: '', redirectTo: '/home', pathMatch: 'full'}
];

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    CoreModule,
    RouterModule.forRoot(routes)
  ],
  providers: [],
  bootstrap: [
    AppComponent
  ]
})
export class AppModule {
}
