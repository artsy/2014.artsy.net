var gulp = require('gulp');
var rename = require('gulp-rename');
var awspublish = require('gulp-awspublish');

var aws = {
  key: process.env.AWS_KEY,
  secret: process.env.AWS_SECRET,
  bucket: process.env.S3_BUCKET
};

gulp.task('deploy', ['compress'], function() {
  var publisher = awspublish.create(aws);

  return gulp.src('./build/**/*')
    .pipe(publisher.publish())
    // .pipe(publisher.sync()) // Temporarily disable sync
    .pipe(publisher.cache())
    .pipe(awspublish.reporter());
});
