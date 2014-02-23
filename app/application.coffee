class Application extends Backbone.Marionette.Application
  initialize: =>
    @on 'initialize:after', @startHistory

    @start()

  startHistory: (options) => Backbone.history.start()


module.exports = Application

