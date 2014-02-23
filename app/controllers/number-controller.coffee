module.exports = class NumberController extends Marionette.Controller
	initialize: (options) ->
		@model = options.model
		@view = options.view
		@listenTo @view, 'number:inc', @numberInc
		return
	numberInc: ->
		newNumber = @model.get 'number'
		newNumber += 1
		newNumber = -5 if newNumber > 5
		@model.set 'number', newNumber
		return