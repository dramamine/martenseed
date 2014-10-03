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
          'public/**/*.coffee'
          'src/views/*.jade'
        ]
      gruntfile: ['Gruntfile.coffee']
      bower: '<json:bower.json>'
  
  # grunt.loadNpmTasks 'grunt-contrib-jade'
  # grunt.loadNpmTasks 'grunt-contrib-coffee'
  # grunt.loadNpmTasks 'grunt-shell'
  # grunt.loadNpmTasks 'grunt-forever'
  # grunt.loadNpmTasks 'grunt-includes'
  # grunt.loadNpmTasks 'grunt-coffeelint'

  #config
  


    # coffeelint:
    #   all: '<%= targets %>'


    # jade:
    #   options:
    #     pretty: true
    #   src: ['src/**/*.jade']

    # express:
    #   options:
    #     opts: ['/usr/bin/coffee']
    #     script: '<%= pkg.main %>'
    #     delay: 1

    #   # prob don't need this
    #   watch:
    #     background: true

    watch:
      express:
        files: '<%= targets.src %>'
        tasks: [
          'coffeelint'
          'express'
        ]
        options:
          spawn: false

    forever:
      server:
        options:
          command: 'coffee'
          index: '<%= pkg.main %>'

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
    'coffeelint'
    'express:watch'
    'watch'
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

