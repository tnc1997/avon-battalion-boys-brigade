import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-header',
  styleUrls: [ './header.component.scss' ],
  templateUrl: './header.component.html',
})
export class HeaderComponent {
  @Input() public title: string;
}
