var gulp = require('gulp');
var uglify = require('gulp-uglify');
var minifyCSS = require('gulp-minify-css')
var runSequence = require('run-sequence');

gulp.task('compress:js', function() {
  return gulp.src('build/javascripts/*.js')
    .pipe(uglify())
    .pipe(gulp.dest('build/javascripts'))
});

gulp.task('compress:css', function() {
  return gulp.src('build/stylesheets/*.css')
    .pipe(minifyCSS())
    .pipe(gulp.dest('build/stylesheets'))
});

gulp.task('compress', ['template:production'], function(done) {
  runSequence('compress:js', 'compress:css', done);
});
