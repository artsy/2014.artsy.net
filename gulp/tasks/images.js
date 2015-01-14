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
  gulp.src('src/assets/images/**/*')
    .pipe(gulp.dest('build/images'));
});

var resize = function(name, options, done) {
  var destination = 'src/assets/images/resized/' + name;
  gulp.src('src/assets/images/originals/*.jpg')
    .pipe(changed(destination))
    .pipe(imageResize(options, done))
    .pipe(imagemin({ progressive: true }))
    .pipe(gulp.dest(destination));
};

gulp.task('resize:images', function(done) {
  var quality = 0.9;
  resize('600x350', { width: 600, height: 350, quality: quality, crop: true, upscale: true });
  resize('960', { width: 960, height: 960, quality: quality, crop: true, upscale: true });
  resize('1920', { width: 1920, height: 1920, quality: quality, crop: false, upscale: false });
  resize('350w', { width: 350, quality: quality, crop: false, upscale: false });
});
