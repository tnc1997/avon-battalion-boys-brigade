import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";

import { AboutModule } from "./about/about.module";
import { CompanyModule } from "./company/company.module";
import { CoreModule } from "./core/core.module";
import { EventModule } from "./event/event.module";
import { HomeModule } from "./home/home.module";
import { AppComponent } from "./app.component";

const routes: Routes = [
  {
    path: "about",
    loadChildren: (): Promise<AboutModule> =>
      import("./about/about.module").then(module => module.AboutModule)
  },
  {
    path: "companies",
    loadChildren: (): Promise<CompanyModule> =>
      import("./company/company.module").then(module => module.CompanyModule)
  },
  {
    path: "events",
    loadChildren: (): Promise<EventModule> =>
      import("./event/event.module").then(module => module.EventModule)
  },
  {
    path: "home",
    loadChildren: (): Promise<HomeModule> =>
      import("./home/home.module").then(module => module.HomeModule)
  },
  { path: "", redirectTo: "/home", pathMatch: "full" }
];

@NgModule({
  declarations: [AppComponent],
  imports: [CoreModule, RouterModule.forRoot(routes)],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {}
