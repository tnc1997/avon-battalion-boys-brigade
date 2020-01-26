import { browser, by, element } from "protractor";

export class AppPage {
  navigateTo(): Promise<void> {
    return browser.get(browser.baseUrl) as Promise<void>;
  }

  getTitleText(): Promise<string> {
    return element(by.css("app-root h1")).getText() as Promise<string>;
  }
}
