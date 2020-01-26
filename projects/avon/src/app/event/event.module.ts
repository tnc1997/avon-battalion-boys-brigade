import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";

import { SharedModule } from "../shared/shared.module";
import { EventsComponent } from "./components/events/events.component";

const routes: Routes = [{ path: "", component: EventsComponent }];

@NgModule({
  declarations: [EventsComponent],
  imports: [RouterModule.forChild(routes), SharedModule]
})
export class EventModule {}
