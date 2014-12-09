Backbone = require "backbone"
{Book} = require "models/book"

class exports.Library extends Backbone.Collection
  model: Book
