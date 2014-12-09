browserify = require "browserify"
source = require "vinyl-source-stream"
gulp = require "gulp"
paths = require "../paths"

gulp.task "scripts", ->
  opts =
    entries: [paths.coffee.src, ]
    extensions: ['.coffee', '.eco']
    paths: [
      './node_modules',
      './src/coffee',
    ]
    debug: yes  # get this running based on env
  browserify opts
    .transform('coffeeify')
    .transform('browserify-eco')
    .bundle()
    .pipe source paths.coffee.dest_filename
    .pipe gulp.dest paths.coffee.dest_path
