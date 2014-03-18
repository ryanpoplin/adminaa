Parse = require 'parse'
# IndexModel = require 'models/index-model'
IndexView = require 'views/index-view'

class Application extends Backbone.Marionette.Application
  initialize: =>
    @on 'initialize:after', @startHistory

    # Edit after this comment...

    # Bad structure here is b/c I'm just testing around...

    # model = new IndexModel
    collection = new IndexCollection
    # collection.add model
    view = new IndexView 

    @addRegions mainRegion: '#main'
    @mainRegion.show view

    @start()

    return

  startHistory: (options) => 
  	Backbone.history.start()
  	return

module.exports = Application