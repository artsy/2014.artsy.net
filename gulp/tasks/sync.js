var sync = require('browser-sync');
var gulp = require('gulp');

gulp.task('sync', ['template:development', 'build:js', 'build:css', 'move:images', 'move:videos'], function() {
  sync.init(['build/**'], {
    ghostMode: {
      scroll: false
    },
    server: {
      baseDir: 'build'
    }
  });
});
