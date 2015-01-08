var fs = require('fs');
var gulp = require('gulp');
var handlebars = require('gulp-compile-handlebars');
var rename = require('gulp-rename');

var options = {
  batch: ['src/html/partials'],
  helpers: {
    assetPath: function(path, context) {
      var revPath = context.data.root[path];
      return revPath ? revPath : path;
    }
  }
};

gulp.task('template:production', ['rev:clean'], function() {
  var manifest = JSON.parse(fs.readFileSync('build/rev-manifest.json', 'utf8'));
  return gulp.src('src/html/index.hbs')
    .pipe(handlebars(manifest, options))
    .pipe(rename('index.html'))
    .pipe(gulp.dest('build'));
});

gulp.task('template:development', ['build:js', 'build:css', 'build:images'], function() {
  return gulp.src('src/html/index.hbs')
    .pipe(handlebars({}, options))
    .pipe(rename('index.html'))
    .pipe(gulp.dest('build'));
});
