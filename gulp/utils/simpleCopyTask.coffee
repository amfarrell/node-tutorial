gulp = require "gulp"
paths = require "../paths"

#Given a name, look up the source path and the destination path in paths.coffee create a gulp task that will copy the 1st to the 2nd.
module.exports = (name) ->
  gulp.task "copy-#{name}", ->
    gulp.src paths[name].src
      .pipe gulp.dest(paths[name].dest)
