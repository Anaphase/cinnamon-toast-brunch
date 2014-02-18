exports.config =
  
  # See http://github.com/brunch/brunch/blob/master/docs/config.md for documentation.
  
  framework: 'AngularJS'
  
  modules:
    wrapper: no
    definition: no
  
  plugins:
    siml:
      moduleName: 'App.templates'
  
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(bower_components|vendor)/
    
    stylesheets:
      defaultExtension: 'styl'
      joinTo:
        'styles/app.css': /^app/
        'styles/vendor.css': /^(vendor|bower_components)/
    
    templates:
      defaultExtension: 'siml'
      joinTo:
        'js/app.js' : /^app/
