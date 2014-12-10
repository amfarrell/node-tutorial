gulp = require "gulp"
gulp.task "build", [ "copy-html", "copy-img", "templates", "sass", "scripts", "test"]
