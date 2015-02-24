var gulp = require('gulp');

gulp.task('sync', ['template:development', 'build:js', 'build:css', 'move:images', 'move:videos'], function(done) {
  done()
});
