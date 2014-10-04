module.exports = (grunt) ->
  
  #load tasks
  #require('load-grunt-tasks') grunt
  require('load-grunt-config') grunt,
    init: true #auto grunt.initConfig
    config:
      # load in the module information
      #pkg: grunt.file.readJSON 'package.json'
      # path to Grunt file for exclusion

      targets:
        src: [
          'src/**/*.coffee'
          'src/views/*.jade'
        ]
      gruntfile: ['Gruntfile.coffee']
      bower: '<json:bower.json>'
  

    # copy:
    #   main:
    #     expand: true
    #     cwd: 'src/public/views/'
    #     src: '**/*.html'
    #     dest: 'public/views/'
    #     filter: 'isFile'
    #   modules:
    #     expand: true
    #     cwd: 'src/modules/'
    #     src: '**/*.html'
    #     dest: 'public/views/'
    #     filter: 'isFile'
  

  grunt.registerTask 'default', [
    'build'
    'express:watch'
    'watch'
    ]

  grunt.registerTask 'build', [
    'clean'
    'copy'
    'coffeelint'
    'coffee'
  ]


  # grunt.registerTask 'forever-start', [
  #   'forever:server:start'
  #   ]
  # grunt.registerTask 'forever-stop', [
  #   'forever:server:stop'
  #   ]
  # grunt.registerTask 'forever-restart', [
  #   'forever:server:restart'
  #   ]

