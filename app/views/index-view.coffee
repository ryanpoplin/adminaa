module.exports = class IndexView extends Backbone.Marionette.ItemView
	template: require 'templates/index-template'
	$container: null

	initialize: (options) ->
		console.log 'IndexView Init...'
		return
