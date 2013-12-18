module.exports = (lineman) ->
  baseConfig = lineman.config.application

  files:
    stylus:
      generatedVendor: 'generated/css/vendor.styl.css'
      generatedApp: 'generated/css/app.styl.css'
      vendor: 'vendor/css/**/*.styl'
      app: 'app/css/**/*.styl'

  config:
    loadNpmTasks: baseConfig.loadNpmTasks.concat('grunt-contrib-stylus')
    removeTasks:
      common: baseConfig.removeTasks.common.concat('less')
    prependTasks:
      common: baseConfig.prependTasks.common.concat('stylus:compile')

    stylus:
      compile:
        options:
          path: ['app/css', 'vendor/css']
        files:
          "<%= files.stylus.generatedVendor %>": "<%= files.stylus.vendor %>"
          "<%= files.stylus.generatedApp %>": "<%= files.stylus.app %>"


