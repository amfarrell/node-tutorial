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
    rendered = bookView.render().el
   # The problem is that this happens before the html is loaded.
   # Therefore, it doesn't have access to the DOM.
    @$el.append(rendered)
    return
