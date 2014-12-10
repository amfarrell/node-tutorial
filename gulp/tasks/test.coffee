gulp = require 'gulp'
mocha = require 'gulp-mocha'
coffee = require 'gulp-coffee'
paths = require '../paths'


gulp.task "test", ->
  console.log paths.test.src
  gulp.src [paths.test.src], {read: false}
    .pipe coffee sourcemap:true
    .pipe mocha {reporter: 'spec', globals: {should: require "should"}}
