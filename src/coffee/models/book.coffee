Backbone = require "backbone"

class exports.Book extends Backbone.Model
  defaults:
    coverImage: 'img/placeholder.png',
    title: 'No title',
    author: 'Unknown',
    releaseDate: 'Unknown',
    keywords: 'None'
