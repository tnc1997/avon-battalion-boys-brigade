import { Component } from '@angular/core';
import { ICard } from '@boys-brigade/shared';

@Component({
  selector: 'app-home',
  styleUrls: [ './home.component.scss' ],
  templateUrl: './home.component.html',
})
export class HomeComponent {
  public cards: ICard[] = [
    {
      content: 'The Avon Battalion consists of the various companies in ' +
      'and around the Bristol area.',
      title: 'Welcome',
    },
    {
      content: 'This feature is coming soon! Check back later for ' +
      'more information.',
      title: 'Company Finder',
    },
    {
      content: 'Please do not hesitate to get in touch with us. You can ' +
      'contact us via the footer links.',
      title: 'Questions',
    },
  ];
}
