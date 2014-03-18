IndexModel = require 'models/index-model'
model = new IndexModel
module.exports = class IndexCollection extends Backbone.Collection
	model: model