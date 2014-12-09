gulp = require "gulp"
livereload = require "gulp-livereload"
paths = require "../paths"

gulp.task "default", ["build"], ->
  livereload.listen auto: true

  gulp.watch "src/coffee/**/*.*", ["scripts", ]
  gulp.watch "src/templates/**/*.*", ["templates", ]
  gulp.watch "src/scss/**/*.*", ["sass", ]
