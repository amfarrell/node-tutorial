gulp = require "gulp"
livereload = require "gulp-livereload"
paths = require "../paths"

gulp.task "default", ["build"], ->
  livereload.listen auto: true

  gulp.watch "static/coffee/**/*.*", ["scripts", ]
  gulp.watch "static/templates/**/*.*", ["templates", ]
  gulp.watch "static/scss/**/*.*", ["sass", ]
