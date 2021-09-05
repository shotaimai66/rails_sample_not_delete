import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import '@fortawesome/fontawesome-free/js/all';

Rails.start()
Turbolinks.start()
ActiveStorage.start()

var jQuery = require('jquery')
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

require("bootstrap/dist/js/bootstrap")
require("admin-lte")
require ("./users/auth")
