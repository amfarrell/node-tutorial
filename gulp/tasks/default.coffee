gulp = require "gulp"
livereload = require "gulp-livereload"
paths = require "../paths"

gulp.task "default", ["build"], ->
  livereload.listen auto: true

  gulp.watch "src/coffee/**/*.*", ["scripts", "test" ]
  gulp.watch "test/**/*.*", ["test", ]
  gulp.watch "src/templates/**/*.*", ["templates", ]
  gulp.watch "src/scss/**/*.*", ["sass", ]
  gulp.watch "src/img/**/*.*", ["copy-img", ]
  gulp.watch "src/*.html", ["copy-html", ]
