var gulp = require('gulp');

gulp.task('build:images', ['clean:images'], function() {
  return gulp.src('src/assets/images/*')
    .pipe(gulp.dest('build/images'));
});
