var gulp = require('gulp');
var rename = require('gulp-rename');
var imageResize = require('gulp-image-resize');

gulp.task('build:images', ['clean:images'], function() {
  return gulp.src('src/assets/images/**/*')
    .pipe(gulp.dest('build/images'));
});

gulp.task('resize:images', function() {
  var src = 'src/assets/images/originals/*.jpg';
  var quality = 0.95;

  gulp.src(src).pipe(imageResize({
      width: 600,
      height: 350,
      quality: quality,
      crop: true,
      upscale: true
    }))
    .pipe(gulp.dest('build/images/600x350'));

  gulp.src(src).pipe(imageResize({
      width: 960,
      height: 960,
      quality: quality,
      crop: false,
      upscale: true
    }))
    .pipe(gulp.dest('build/images/960'));

  gulp.src(src).pipe(imageResize({
      width: 1920,
      height: 1920,
      quality: quality,
      crop: false,
      upscale: true
    }))
    .pipe(gulp.dest('build/images/1920'));

  gulp.src(src).pipe(imageResize({
      width: 350,
      quality: quality,
      crop: false,
      upscale: true
    }))
    .pipe(gulp.dest('build/images/350w'));
});
