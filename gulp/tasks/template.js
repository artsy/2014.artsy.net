var fs = require('fs');
var gulp = require('gulp');
var jade = require('gulp-jade');

var copy = function() {
  var data = fs.readdirSync('src/data/');
  var copy = {};
  data.forEach(function(file) {
    copy[file.split('.')[0]] = JSON.parse(fs.readFileSync('src/data/' + file, 'utf8'));
  });
  return copy;
}

gulp.task('template:development', function() {
  gulp.src('src/html/index.jade')
    .pipe(jade({ locals: { copy: copy() } }))
    .pipe(gulp.dest('build'));
});

gulp.task('template:production', ['rev:clean'], function() {
  var manifest = JSON.parse(fs.readFileSync('build/rev-manifest.json', 'utf8'));
  gulp.src('src/html/index.jade')
    .pipe(jade({ locals: { assets: manifest, copy: copy() } }))
    .pipe(gulp.dest('build'));
});
