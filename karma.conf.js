module.exports = function(config) {
  config.set({

    // basePath: '',

    // browsers : ['Chrome'],

    frameworks: ['jasmine'],

    plugins: [
      'karma-jasmine',
      // 'karma-chrome-launcher',
      'karma-coffee-preprocessor'
    ],

    files: [
      'node_modules/angular/angular.js',
      'node_modules/angular-route/angular-route.js',
      'node_modules/angular-mocks/angular-mocks.js',
      'build/js/tpl.js',
      // 'build/js/app.js',
      'assets/javascripts/**/*.coffee',
      'assets/tests/**/*.spec.coffee'
    ],

    reporters: ['progress'],

    preprocessors: {
      '**/*.coffee': ['coffee']
    },

    // coffeePreprocessor: {
    //   // options passed to the coffee compiler
    //   options: {
    //     bare: true,
    //     sourceMap: false
    //   },
    //   // transforming the filenames
    //   transformPath: function(path) {
    //     return path.replace(/\.coffee$/, '.js')
    //   }
    // },

  })
}