import {MediaMatcher} from '@angular/cdk/layout';
import {ChangeDetectorRef, Component, Input, OnDestroy, OnInit} from '@angular/core';

import {SidenavItem} from '../../../core/models/SidenavItem';

@Component({
  selector: 'app-sidenav',
  templateUrl: './sidenav.component.html',
  styleUrls: ['./sidenav.component.scss']
})
export class SidenavComponent implements OnDestroy, OnInit {
  public readonly mobileQuery: MediaQueryList;
  public readonly mobileQueryListener: EventListener;

  @Input() public items: SidenavItem[] = [
    new SidenavItem('Home', 'home', '/home'),
    new SidenavItem('About', 'information', '/about'),
    new SidenavItem('Companies', 'church', '/companies'),
    new SidenavItem('Events', 'calendar', '/events')
  ];

  constructor(changeDetectorRef: ChangeDetectorRef, mediaMatcher: MediaMatcher) {
    this.mobileQuery = mediaMatcher.matchMedia('(max-width: 600px)');
    this.mobileQueryListener = () => changeDetectorRef.detectChanges();
  }

  ngOnDestroy(): void {
    if (this.mobileQuery.removeEventListener) {
      this.mobileQuery.removeEventListener('resize', this.mobileQueryListener);
    } else if (this.mobileQuery.removeListener) {
      this.mobileQuery.removeListener(this.mobileQueryListener);
    }
  }

  ngOnInit(): void {
    if (this.mobileQuery.addEventListener) {
      this.mobileQuery.addEventListener('resize', this.mobileQueryListener);
    } else if (this.mobileQuery.addListener) {
      this.mobileQuery.addListener(this.mobileQueryListener);
    }
  }
}
