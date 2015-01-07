var fs = require('fs');
var gulp = require('gulp');
var rev = require('gulp-rev');
var del = require('del');
var path = require('path');
var override = require('gulp-rev-css-url');

gulp.task('rev', ['build:js', 'build:css', 'build:images'], function() {
  return gulp.src([
      'build/stylesheets/application.css',
      'build/javascripts/application.js',
      'build/images/*'
    ], { base: path.join(process.cwd(), 'build') })
    .pipe(rev())
    .pipe(override())
    .pipe(gulp.dest('build'))
    .pipe(rev.manifest())
    .pipe(gulp.dest('build'));
});

gulp.task('rev:clean', ['rev'], function(done) {
  var manifest = JSON.parse(fs.readFileSync('build/rev-manifest.json', 'utf8'));
  var clean = [
    'build/javascripts/*',
    'build/stylesheets/*',
    'build/images/*'
  ];

  for (var filename in manifest) {
    var ignore = '!build/' + manifest[filename];
    clean.push(ignore);
  }

  del(clean, done);
});
