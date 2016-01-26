module.exports = function(config) {
  config.set({
    preprocessors: {
      '**/*.coffee': ['coffee']
    },

    coffeePreprocessor: {
      // options passed to the coffee compiler
      options: {
        bare: true,
        sourceMap: false
      },
      // transforming the filenames
      transformPath: function(path) {
        return path.replace(/\.coffee$/, '.js')
      }
    },

    browsers : ['Chrome'],

    frameworks: ['jasmine'],

    // make sure to include the .coffee files not the compiled .js files
    files: [
      '**/*.spec.coffee'
    ]
  })
}