module.exports = (grunt) ->
  # grunt.registerTask('test', ['mochaTest:test'])
  grunt.registerTask 'test', [ 'mocha_istanbul:coverage' ]
  grunt.registerTask('test:e2e', ['protractor'])
  return
