module.exports = (lineman) ->

  files:
    stylus:
      generatedVendor: 'generated/css/vendor.styl.css'
      generatedApp: 'generated/css/app.styl.css'
      vendor: 'vendor/css/**/*.styl'
      app: 'app/css/**/*.styl'

  config:
    loadNpmTasks: lineman.config.application.loadNpmTasks.concat('grunt-contrib-stylus')
    removeTasks:
      common: lineman.config.application.removeTasks.common.concat('less')
    prependTasks:
      common: lineman.config.application.prependTasks.common.concat('stylus:compile')

    stylus:
      compile:
        options:
          path: ['app/css', 'vendor/css']
        files:
          "<%= files.stylus.generatedVendor %>": "<%= files.stylus.vendor %>"
          "<%= files.stylus.generatedApp %>": "<%= files.stylus.app %>"


