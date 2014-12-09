$ = require "jquery"
Backbone = require "backbone"
{Library} = require "collections/library"
{BookView} = require "views/book"

class exports.LibraryView extends Backbone.View

  el: '#books'

  initialize: (initialBooks) ->
    @collection = new Library(initialBooks)
    @render()
    return

  render: ->
    @collection.each((item) ->
      @renderBook(item)
      return
    , this)
    return

  renderBook: (item) ->
    bookView = new BookView(model: item)
    @$el.append(bookView.render().el)
    return
