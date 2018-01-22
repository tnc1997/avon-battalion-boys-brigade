import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MaterialModule } from '@boys-brigade/material';

import { FooterComponent } from './components/footer/footer.component';
import { HeaderComponent } from './components/header/header.component';
import { SidenavComponent } from './components/sidenav/sidenav.component';

const COMPONENTS = [
  FooterComponent,
  HeaderComponent,
  SidenavComponent,
];

@NgModule({
  declarations: [
    COMPONENTS,
  ],
  exports: [
    COMPONENTS,
  ],
  imports: [
    CommonModule,
    MaterialModule,
    RouterModule,
  ],
})
export class SharedModule { }
