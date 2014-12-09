gulp = require "gulp"
gulp.task "build", ["sass", "scripts", "copy-html", "copy-img", "templates"]
