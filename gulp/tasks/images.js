var gulp = require('gulp');
var rename = require('gulp-rename');
var changed = require('gulp-changed');
var imageResize = require('gulp-image-resize');
var imagemin = require('gulp-imagemin');
var runSequence = require('run-sequence');

gulp.task('build:images:production', function(done) {
  runSequence('clean:images', 'move:images', done);
});

gulp.task('move:images', function() {
  gulp.src([
    'src/assets/images/*.*',
    'src/assets/images/resized/**/*',
  ])
    .pipe(gulp.dest('build/images'));
});

var resize = function(source, version, options) {
  var destination = 'src/assets/images/resized/' + source + '/' + version;
  gulp.src('src/assets/images/originals/' + source + '/' + '*.{jpg,png}')
    .pipe(changed(destination))
    .pipe(imageResize(options))
    .pipe(imagemin({ progressive: true }))
    .pipe(gulp.dest(destination));
};

gulp.task('resize:images', function() {
  var quality = {
    "veryHigh": 0.9,
    "high": 0.8
  };

  // Mobile:

  // Backdrops
  resize('mobile/backdrops', '2x', {
    // Leave dimensions alone ...for now...
    quality: quality.high, crop: false, upscale: false
  });

  // Web:

  // Backdrops
  resize('web/backdrops', '1x', {
    width: 1920, height: 1080, quality: quality.high, crop: false, upscale: false
  });

  // Crops
  resize('web/crops', '1x', {
    width: 500, height: 300, quality: quality.veryHigh, crop: true, upscale: true
  });
  resize('web/crops', '2x', {
    width: 1000, height: 600, quality: quality.high, crop: true, upscale: true
  });

  // Singles
  resize('web/singles', '1x', {
    width: 800, height: 800, quality: quality.veryHigh, crop: false, upscale: false
  });
  resize('web/singles', '2x', {
    width: 1600, height: 1600, quality: quality.high, crop: false, upscale: false
  });

  // Columns
  resize('web/columns', '1x', {
    width: 350, quality: quality.veryHigh, crop: false, upscale: true
  });
  resize('web/columns', '2x', {
    width: 700, quality: quality.high, crop: false, upscale: true
  });

  // Categories
  resize('web/categories', '1x', {
    height: 200, quality: quality.veryHigh, crop: false, upscale: true
  });
  resize('web/categories', '2x', {
    height: 400, quality: quality.high, crop: false, upscale: true
  });
});
