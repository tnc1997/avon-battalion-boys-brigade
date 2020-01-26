import { HttpClientModule } from "@angular/common/http";
import { NgModule } from "@angular/core";
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { ServiceWorkerModule } from "@angular/service-worker";

import { environment } from "../../environments/environment";

const modules = [BrowserAnimationsModule, HttpClientModule];

@NgModule({
  imports: [
    ...modules,
    ServiceWorkerModule.register("ngsw-worker.js", {
      enabled: environment.production
    })
  ],
  exports: [...modules]
})
export class CoreModule {}
