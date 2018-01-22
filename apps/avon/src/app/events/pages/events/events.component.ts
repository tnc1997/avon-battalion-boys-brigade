import { Component } from '@angular/core';
import { ICard } from '@boys-brigade/shared';

@Component({
  selector: 'app-events',
  styleUrls: [ './events.component.scss' ],
  templateUrl: './events.component.html',
})
export class EventsComponent {
  public cards: ICard[] = [
    {
      content: 'There are currently no major upcoming events in the Avon ' +
      'Battalion, please check with your local company for other events.',
      title: 'Events',
    },
  ];
}
