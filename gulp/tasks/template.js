var fs = require('fs');
var gulp = require('gulp');
var jade = require('gulp-jade');

gulp.task('template:development', function() {
  var copy = JSON.parse(fs.readFileSync('src/data/copy.json', 'utf8'));
  gulp.src('src/html/index.jade')
    .pipe(jade({ locals: { copy: copy } }))
    .pipe(gulp.dest('build'));
});

gulp.task('template:production', ['rev:clean'], function() {
  var manifest = JSON.parse(fs.readFileSync('build/rev-manifest.json', 'utf8'));
  var copy = JSON.parse(fs.readFileSync('src/data/copy.json', 'utf8'));
  gulp.src('src/html/index.jade')
    .pipe(jade({ locals: { assets: manifest, copy: copy } }))
    .pipe(gulp.dest('build'));
});
