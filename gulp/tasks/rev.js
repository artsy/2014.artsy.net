var fs = require('fs');
var gulp = require('gulp');
var rev = require('gulp-rev');
var del = require('del');
var path = require('path');
var override = require('gulp-rev-css-url');

gulp.task('rev', ['build:js', 'build:css', 'build:images:production', 'build:videos:production'], function() {
  return gulp.src([
      'build/stylesheets/application.css',
      'build/javascripts/application.js',
      'build/images/**/*',
      'build/videos/*'
    ], { base: path.join(process.cwd(), 'build') })
    .pipe(rev())
    .pipe(override())
    .pipe(gulp.dest('build'))
    .pipe(rev.manifest())
    .pipe(gulp.dest('build'));
});

gulp.task('rev:clean', ['rev'], function(done) {
  var manifest = JSON.parse(fs.readFileSync('build/rev-manifest.json', 'utf8'));
  var toClean = Object.keys(manifest).map(function(path) { return 'build/' + path; });
  del(toClean, done);
});
