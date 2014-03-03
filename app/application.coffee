'use strict'

Parse = require('parse')

Coffee = require('coffee')

# Router = require('router')

IndexView = require('views/index-view')

NodeTesting = require('node/node')

# Pagination = require('backbone-plugins/pagination')

# User = require('models/user-model')

# Users = require('collections/user-collection')

# UserItemView = require('views/user-view')

# NumberModel = require('models/number-model')
# NumberView = require('views/number-view')
# NumberController = require('controllers/number-controller')

# The go-to root of the application...
class Application extends Backbone.Marionette.Application
  initialize: =>
    @on 'initialize:after', @startHistory

    # model = new NumberModel
    # view = new NumberView model: model
    # new NumberController model: model, view: view

    # Pagination Example...
    # pagingOne = new Pagination 10, new Users()
    # pagingTwo = new Pagination 20, new Users()

    # userItem = new UserItemView
    #   model: new User

    

    view = new IndexView

    @addRegions mainRegion: '#main'
    @mainRegion.show view

    @start()

    return

  startHistory: (options) => 
  	Backbone.history.start()
  	return

module.exports = Application