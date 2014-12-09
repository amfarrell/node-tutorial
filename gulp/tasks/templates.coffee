gulp = require "gulp"
concat = require "gulp-concat"
nunjucks = require "nunjucks"
map = require "vinyl-map"

env = new nunjucks.Environment()
prefix = 'src/templates/'

gulp.task "templates", ->
  compileTemplate = map (_, filename) ->
    opts =
      env: env
      name: filename.slice(filename.indexOf(prefix) + prefix.length)
    console.log "compiling #{opts.name}"
    nunjucks.precompile filename, opts

  gulp.src "./src/templates/**/*.*"
    .pipe compileTemplate
    .pipe concat "templates.js"
    .pipe gulp.dest "build/js/"
