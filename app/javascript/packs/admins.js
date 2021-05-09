// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require rails-ujs
//= require turbolinks
//= require_tree ./admin

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("bootstrap/dist/js/bootstrap")
require("admin-lte/plugins/jquery/jquery.min")
require("admin-lte/plugins/bootstrap/js/bootstrap.bundle.min")
require("admin-lte/dist/js/adminlte.min")
