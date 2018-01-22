import { Component, Input } from '@angular/core';

import { IPage } from '../../models/page';

@Component({
  selector: 'app-sidenav',
  styleUrls: [ './sidenav.component.scss' ],
  templateUrl: './sidenav.component.html',
})
export class SidenavComponent {
  @Input() public pages: IPage[] = [
    { icon: 'home', routerLink: '/home', title: 'Home' },
    { icon: 'info', routerLink: '/info', title: 'Info' },
    { icon: 'group', routerLink: '/companies', title: 'Companies' },
    { icon: 'date_range', routerLink: '/events', title: 'Events' },
  ];
}
