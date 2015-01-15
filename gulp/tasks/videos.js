var gulp = require('gulp');

gulp.task('move:videos', function() {
  gulp.src([
    'src/assets/videos/armory-columns.mp4'
  ])
    .pipe(gulp.dest('build/videos'));
});
