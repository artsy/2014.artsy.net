var gulp = require('gulp');
var stylus = require('gulp-stylus');
var nib = require('nib');

gulp.task('build:css', ['clean:css'], function() {
  gulp.src('./src/assets/stylesheets/*.styl')
    .pipe(stylus({ use: [nib()] }))
    .pipe(gulp.dest('./build/stylesheets'));
});
