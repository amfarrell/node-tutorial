path = require "path"

module.exports = (name) ->
	console.log name
	return /(\.(js|coffee)$)/i.test(path.extname(name))
