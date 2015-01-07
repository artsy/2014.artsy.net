var gulp = require('gulp');
var rename = require('gulp-rename');
var awspublish = require('gulp-awspublish');

gulp.task('deploy', ['compress'], function() {
  var publisher = awspublish.create({
    key: process.env.AWS_KEY,
    secret: process.env.AWS_SECRET,
    bucket: process.env.S3_BUCKET
  });

  return gulp.src('./build/**/*')
    .pipe(publisher.publish())
    .pipe(publisher.sync())
    .pipe(publisher.cache())
    .pipe(awspublish.reporter());
});
