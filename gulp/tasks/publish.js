var gulp = require('gulp');
var rename = require('gulp-rename');
var awspublish = require('gulp-awspublish');
var cloudfront = require("gulp-cloudfront");

var aws = {
  key: process.env.AWS_KEY,
  secret: process.env.AWS_SECRET,
  bucket: process.env.S3_BUCKET,
  distributionId: process.env.DISTRIBUTION_ID,
  patternIndex: /^index\.html$/
};

gulp.task('deploy', ['compress'], function() {
  var publisher = awspublish.create(aws);

  return gulp.src('./build/**/*')
    .pipe(publisher.publish())
    .pipe(publisher.sync())
    .pipe(publisher.cache())
    .pipe(awspublish.reporter())
    .pipe(cloudfront(aws));
});
