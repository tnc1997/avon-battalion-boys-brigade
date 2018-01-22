import { Component } from '@angular/core';
import { ICard } from '@boys-brigade/shared';

@Component({
  selector: 'app-info',
  styleUrls: [ './info.component.scss' ],
  templateUrl: './info.component.html',
})
export class InfoComponent {
  public cards: ICard[] = [
    {
      content: 'There are currently 11 companies in the Avon Battalion ' +
      'across 3 local authorities. Between these companies there are over ' +
      '340 boys and over 100 staff.',
      title: 'Info',
    },
    {
      content: 'The Avon Battalion was formed in 1974 alongside the ' +
      'creation of the county of Avon. Previously, there had been a Bristol ' +
      'Battalion formed in 1891, which was only 8 years after the ' +
      'Boys\' Brigade was created.',
      title: 'History',
    },
  ];
}
