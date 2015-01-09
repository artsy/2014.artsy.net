var gulp = require('gulp');

gulp.task('watch', ['set:watch', 'sync'], function() {
  gulp.watch('src/assets/stylesheets/**', ['build:css']);
  gulp.watch('src/html/**', ['template:development']);
  gulp.watch('src/data/**', ['template:development']);
});
