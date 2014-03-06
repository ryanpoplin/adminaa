User = require("./models/user")

module.exports = App.module "Auth", (Auth, App, Backbone, Marionette, $, _) ->
  @startWithParent = no

  Auth.addInitializer =>
    @user = new User()

  App.reqres.setHandler "get:user", =>
    @user