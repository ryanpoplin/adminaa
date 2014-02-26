BaseView = require('views/base-view')
Tpl = require('templates/number-template')
module.exports = UserItemView = BaseView.extend
		initialize: ->
			console.log 'UserItemView Init...'
			return
		tagName: 'div'
		template: Tpl
		# template: '<span><%= name %></span>'
		# Config...
		# render: ->
		#	BaseView::render.apply @, args
		#	console.log 'Override...'
		#	@.anotherFunc()
		#	return @
		#anotherFunc: ->
		#	console.log 'That\'s what\'s up...'
		#	return