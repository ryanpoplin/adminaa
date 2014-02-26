module.exports = class IndexView extends Backbone.Marionette.ItemView
	template: require('templates/number-template')
	events:
		'click #log-in': 'logInAdmin'
	logInAdmin: ->
		username = $('#log-in-username').val()
		password = $('#log-in-password').val()
		Parse.User.logIn username, password,
			success: (user) -> 
				alert user.get("email") + ' you have been logged in...'
				return
			error: (user, error) -> 
				alert 'An error has occured...'
				return
		return