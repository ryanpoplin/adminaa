ExBackModel = require('models/task-model')
module.exports = class Tasks extends Backbone.Collection
	model: ExBackModel
	url: '127.0.0.1:3000/api/tasks'
