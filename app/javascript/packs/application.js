import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

Rails.start();
Turbolinks.start();
ActiveStorage.start();

// External imports
import "bootstrap";

// Internal imports, e.g:
import { initNavbarBrowse } from "../pages/browse_navbar";
import { initGlider } from "../components/glider";
import { initButtons } from "../components/buttons";
import { initUserShow } from "../pages/user_show";
import { initChatroomCable } from "../channels/chatroom_channel";

document.addEventListener("turbolinks:load", () => {
  initNavbarBrowse();
  initGlider();
  initButtons();
  initUserShow();
  initChatroomCable();
});
