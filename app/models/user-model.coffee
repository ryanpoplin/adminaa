module.exports = User = Backbone.Model.extend
		initialize: ->
			console.log 'User Init...'
			return
		defaults:
			name: 'Ryan Poplin'
			email: 'mobileupstate@gmail.com'
			