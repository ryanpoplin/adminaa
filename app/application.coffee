'use strict'

Parse = require 'parse'

# Router = require 'router' 

IndexView = require 'views/index-view'

class Application extends Backbone.Marionette.Application
  initialize: =>
    @on 'initialize:after', @startHistory

    # This will need to be routed...

    view = new IndexView

    @addRegions mainRegion: '#main'
    @mainRegion.show view

    @start()

    return

  startHistory: (options) => 
  	Backbone.history.start()
  	return

module.exports = Application