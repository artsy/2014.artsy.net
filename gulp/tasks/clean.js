var gulp = require('gulp');
var del = require('del');

gulp.task('clean:css', function(done) {
  del('build/stylesheets/*', done);
});

gulp.task('clean:js', function(done) {
  del('build/javascripts/*', done);
});

gulp.task('clean:images', function(done) {
  del('build/images/*', done);
});


gulp.task('clean:videos', function(done) {
  del('build/videos/*', done);
});

gulp.task('teardown', function(done) {
  del('build', done);
});
