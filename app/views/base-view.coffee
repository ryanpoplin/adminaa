module.exports = BaseView = Backbone.View.extend
	render: ->
		tpl = _.template @template
		data = @model
		data = (if (@model) then @model.toJSON() else {})
		html = tpl data
		@$el.html html
		return @
	close: ->
		@remove()
		return