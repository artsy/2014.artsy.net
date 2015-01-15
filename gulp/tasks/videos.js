var gulp = require('gulp');

gulp.task('build:videos:production', function(done) {
  runSequence('clean:videos', 'move:videos', done);
});

gulp.task('move:videos', function() {
  gulp.src([
    'src/assets/videos/armory-columns.mp4'
  ])
    .pipe(gulp.dest('build/videos'));
});
