$ = require "jquery"
_ = require "underscore"
Backbone = require "backbone"
nunjucks = require "nunjucks"


class exports.BookView extends Backbone.View
  tagName: 'div'

  className: 'bookContainer'

  template: (data) ->
    nunjucks.render "book.html", data

  render: ->
    @$el.html( this.template( this.model.attributes ) );
    return this

