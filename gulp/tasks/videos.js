var gulp = require('gulp');
var runSequence = require('run-sequence');

gulp.task('build:videos:production', function(done) {
  runSequence('clean:videos', 'move:videos', done);
});

gulp.task('move:videos', function() {
  gulp.src('src/assets/videos/*.{mp4,webm}')
    .pipe(gulp.dest('build/videos'));
});
