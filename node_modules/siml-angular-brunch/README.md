## siml-angular-brunch
Adds [SIML](https://github.com/padolsey/SIML) support to [Brunch](http://brunch.io), with an AngularJS flavor.

## How It Works
siml-angular-brunch searches the `templates.joinTo` directory and compiles any file with the `.siml` extension, excluding the assets directory. The compiled HTML is placed in an AngularJS module specified by `plugins.siml.moduleName`. Optionally, siml-angular-brunch can generate a simple AngularJS router with the compiled files. See below for details.

## Usage
Install the plugin via npm with `npm install --save siml-angular-brunch`.

Or, do manual install:

* Add `"siml-angular-brunch": "x.y.z"` to `package.json` of your Brunch app. Pick a plugin version that corresponds to your minor (y) Brunch version.
* If you want to use git version of plugin, add `"siml-angular-brunch": "git+ssh://git@github.com:Anaphase/siml-angular-brunch.git"`.

## Sample Brunch config.coffee
```coffee-script
exports.config =
  
  framework: 'AngularJS'
  
  modules:
    wrapper: no
    definition: no
  
  files:
    
    # other config stuff here
    
    templates:
      defaultExtension: 'siml'
      joinTo:
        'js/app.js' : /^app/ # search entire app directory for .siml files and place AngularJS module in js/app.js
  
  # you can customize smil-angular-brunch here
  plugins:
    siml:
      moduleName: 'app.templates' # default: 'templates' - all .siml files will be compiled into an AngularJS module named <moduleName> in the templates.joinTo file
      
      # optional router config
      createRouter: yes # default: no - generate a router module based on the compiled files
      routerOptions:
        moduleName: 'app.router' # default: 'router'
        onlyUse: 'templates' # default: use all - only add .siml files that are in this directory to the router (usefull for when you have 'templates' and 'partials' directories)
        defualtRoute: '/home' # default: none
```

## Optional Router Generation
If you set `plugins.siml.createRouter = yes`, then siml-angular-brunch will generate an additional module (specified by `plugins.siml.routerOptions.moduleName`) which contains a very simple AngularJS router for all of the compiled files. For example, this project structure:

```
app
  app.coffee
  assets
    img
    index.html
    js
  scripts
    controllers.coffee
    directives.coffee
    filters.coffee
    services.coffee
  styles
    styles.sass
  templates
    home.siml
    products.siml
    contact.siml
```

will generate the following router module:

```javascript
angular.module('router', [])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/home', { controller: 'Home', templateUrl: 'templates/home.html' });
    $routeProvider.when('/products', { controller: 'Products', templateUrl: 'templates/products.html' });
    $routeProvider.when('/contact', { controller: 'Contact', templateUrl: 'templates/contact.html' });
  }])
```

See the example Brunch config.coffee above for details on configuring the router.

## License

The MIT License (MIT)

Copyright (c) 2013 Colin Wood

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
