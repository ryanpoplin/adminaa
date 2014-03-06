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

module.exports = do ->
  App = new Backbone.Marionette.Application()

  App.on "initialize:after", (options)->

    view = new IndexView
    @addRegions mainRegion: '#main'
    @mainRegion.show view

  App.on "initialize:before", (options = {}) ->
    require("auth/module").start(options)

  App.on "start", ->
    Backbone.history.start()


  App