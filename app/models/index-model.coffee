module.exports = class IndexModel extends Backbone.Model
	defaults: 
		name: Questalot Quest
	initialize: ->
		console.log 'IndexModel Init...'
		return