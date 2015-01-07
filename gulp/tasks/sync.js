var sync = require('browser-sync');
var gulp = require('gulp');

gulp.task('sync', ['template:development'], function() {
  sync.init(['build/**'], {
    server: {
      baseDir: 'build'
    }
  });
});
