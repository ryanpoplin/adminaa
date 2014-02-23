NumberModel = require('number-model')
NumberView = require('number-view')
NumberController = require('number-controller')

class Application extends Backbone.Marionette.Application
  initialize: =>
    @on 'initialize:after', @startHistory

    model = new NumberModel
    view = NumberView model: model
    new NumberController model: model, view: view

    @addRegions mainRegion: '#main'
    @mainRegion.show view

    @start()

    return

  startHistory: (options) => 
  	Backbone.history.start()
  	return

module.exports = Application

