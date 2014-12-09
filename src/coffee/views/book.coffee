$ = require "jquery"
_ = require "underscore"
Backbone = require "backbone"

booktemplate = require "templates/booktemplate"


class exports.BookView extends Backbone.View
  tagName: 'div',
  className: 'bookContainer',
  template: _.template( $('#bookTemplate').html() ),
  render: ->
    this.$el.html( this.template( this.model.attributes ) );
    return this;

