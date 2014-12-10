module.exports =
  html:
    src: "./src/*.html"
    dest: "build/"

  img:
    src: "./src/img/**/*.*"
    dest: "build/img"

  test:
    src: "./test/**/*.coffee"

  sass:
    src: "./src/sass/*.sass"
    watch: "./src/sass/**/*.sass"
    dest: "build/css"

  coffee:
    src: "./src/coffee/app.coffee"
    dest_filename: "app.js"
    dest_path: "build/js"

  templates:
    src: "./src/templates/**/*.*"
    dest: "build/templates"
