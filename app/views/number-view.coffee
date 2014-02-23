module.exports = class NumberView extends Backbone.Marionette.ItemView
	template: require('templates/number-template')
	events: 
		'click #inc': 'inc'
	ui: 
		incInp: '#number'
	initialize: ->
		@listenTo @model, "change:number", @numberChanged
		return
	numberChanged: ->
		@ui.incInp.attr 'value', @model.get 'number'
		return
	inc: (evt) ->
		@trigger 'number:inc'
		return