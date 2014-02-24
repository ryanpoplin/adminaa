module.exports = (->

	# Here's some CoffeeScript...

	###
		A Multi-Liner...
	###

	# A Testing Var...
	varlin = 'Poplin'

	# Still not sure what to do with this...
	sum = (nums...) ->
		result = 0
		nums.forEach (n) -> result += n
		result

	if true != true then console.log 'AHAHAHA!'

		

	proto = 
		name: 'Byrdann'
		age: 23
	theBoss = Object.create proto

	Programmer = Backbone.Model.extend
		initialize: ->
			console.log 'Programmer Model...'
			return

	programmer = new Programmer 



	return

)()