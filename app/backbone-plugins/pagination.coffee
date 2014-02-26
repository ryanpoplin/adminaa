module.exports = Pagination = (collection, noOfItemsInPage) ->
	throw "No collection was passed..." unless collection
	@currentPage = 1
	@noOfItemsInPage = noOfItemsInPage || 10
	@collection = collection
	return

	_.extend Pagination::, {
		nextPage: ->

			return
		prevPage: ->

			return
	}