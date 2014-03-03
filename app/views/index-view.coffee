'use strict'
module.exports = class IndexView extends Backbone.Marionette.ItemView
	template: require('templates/index-template')
	events:
		'click #log-in': 'logInAdmin'
	logInAdmin: (e) ->
		e?.preventDefault()
		username = $('#log-in-username').val()
		password = $('#log-in-password').val()
		Parse.User.logIn username, password,
			success: (user) -> 
				alert user.get("email") + ' you have been logged in...'
				return
			error: (user, error) -> 
				alert 'Either you forgot your Username or Password, or you\'re a bastard...'
				return
		return