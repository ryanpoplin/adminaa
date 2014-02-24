module.exports = class Router extends Backbone.Router
	routes:
		'': 'index'
	index: ->
		console.log 'Hey...'
		return
