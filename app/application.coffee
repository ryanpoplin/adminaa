NodeTesting = require('node/node')
NumberModel = require('models/number-model')
NumberView = require('views/number-view')
NumberController = require('controllers/number-controller')

class Application extends Backbone.Marionette.Application
  initialize: =>
    @on 'initialize:after', @startHistory



    model = new NumberModel
    view = new NumberView model: model
    new NumberController model: model, view: view

    @addRegions mainRegion: '#main'
    @mainRegion.show view

    @start()

    return

  startHistory: (options) => 
  	Backbone.history.start()
  	return

module.exports = Application

