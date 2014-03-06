'use strict'
module.exports = class IndexView extends Backbone.Marionette.ItemView
	template: require('templates/index-template')
	events:
		'click #log-in': 'logInAdmin'

	initialize: ->
		@model = App.request("get:user")

	logInAdmin: (e) ->
		e?.preventDefault()

		# Set the username/password from the form to the model
		@model.set "username", $('#log-in-username').val()
		@model.set "password", $('#log-in-password').val()

		# Get the log in promise
		promise = @model.logIn()

		# Handle the asnyc promise events (done = success, fail = error)
		promise
			.done (user)->
				# Trigger a global event for other modules to listen to
				App.vent.trigger("user:authenticated", user)
			.fail (err)->
				console.log("error", err)

		return promise