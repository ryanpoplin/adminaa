module.exports = class Number extends Backbone.Model
	defaults: 
		number: 1
	inc: ->
		@set 'number', @get('number') + 1
		return	
