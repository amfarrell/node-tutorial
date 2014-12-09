Backbone = require "backbone"
Backbone.$ = require "jquery"

class exports.Book extends Backbone.Model
  defaults:
    coverImage: 'img/placeholder.png',
    title: 'No title',
    author: 'Unprintable',
    releaseDate: 'Unknown',
    keywords: 'None'
