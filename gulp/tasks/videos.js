var gulp = require('gulp');

gulp.task('build:videos:production', function(done) {
  runSequence('clean:videos', 'move:videos', done);
});

gulp.task('move:videos', function() {
  gulp.src('src/assets/videos/*.{mp4,webm}')
    .pipe(gulp.dest('build/videos'));
});
