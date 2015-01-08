var fs = require('fs');
var gulp = require('gulp');
var jade = require('gulp-jade');

gulp.task('template:development', function() {
  gulp.src('src/html/index.jade')
    .pipe(jade())
    .pipe(gulp.dest('build'));
});

gulp.task('template:production', ['rev:clean'], function() {
  var manifest = JSON.parse(fs.readFileSync('build/rev-manifest.json', 'utf8'));
  gulp.src('src/html/index.jade')
    .pipe(jade({ locals: { assets: manifest } }))
    .pipe(gulp.dest('build'));
});
