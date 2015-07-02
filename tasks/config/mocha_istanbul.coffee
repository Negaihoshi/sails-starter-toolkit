module.exports = (grunt) ->
  grunt.config.set 'mocha_istanbul',
  coverage:
    src: 'test/unit/'
    options:
      coverageFolder: 'coverage'
      istanbulOptions: ['--hook-run-in-context']
      istanbulPath: require.resolve('/Users/negaihoshi/.nvm/versions/io.js/v1.8.1/bin/ibrik')
      mask: '**/*.spec.coffee'
      root: 'api/'
  grunt.loadNpmTasks 'grunt-mocha-istanbul'
  return
