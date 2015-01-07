var gulp = require('gulp');
var source = require('vinyl-source-stream');
var browserify = require('browserify');
var watchify = require('watchify');
var bundleLogger = require('../util/bundleLogger');
var handleErrors = require('../util/handleErrors');

gulp.task('build:js', ['clean:js'], function() {
  var bundleMethod = global.isWatching ? watchify : browserify;

  var bundler = bundleMethod({
    // Specify the entry point of your app
    entries: ['./src/assets/javascripts/application.coffee'],
    // Add file extentions to make optional in your requires
    extensions: ['.coffee']
  });

  var bundle = function() {
    // Log when bundling starts
    bundleLogger.start();

    return bundler
      // Enable source maps!
      .bundle({ debug: true })
      // Report compile errors
      .on('error', handleErrors)
      // Use vinyl-source-stream to make the
      // stream gulp compatible. Specify the
      // desired output filename here.
      .pipe(source('application.js'))
      // Specify the output destination
      .pipe(gulp.dest('./build/javascripts'))
      // Log when bundling completes
      .on('end', bundleLogger.end);
  };

  if (global.isWatching) {
    // Rebundle with watchify on changes.
    bundler.on('update', bundle);
  }

  return bundle();
});
