Cinnamon Toast Brunch
=====================

![](http://i.imgur.com/i8UyOKN.png)

**Never write a semicolon again!** With [AngularJS](http://angularjs.org/), [CoffeeScript](http://coffeescript.org/), [Stylus](http://learnboost.github.io/stylus/), & [SIML](https://github.com/padolsey/SIML), you get clean, easy to read code that compiles down to plain ol' JavaScript, CSS, & HTML.

The philosophy behind Cinnamon Toast Brunch is to write as little code as possible. That means not having to bother with needless semicolons, curly braces, commas, colons, and (worst of all) angle brackets and other assorted HTML visual clutter.

With Cinnamon Toast Brunch, your code is clean and concise. Of course, if you're a fan of writing lots of extra punctuation with your code, **you can still use vanilla JavaScript and CSS in place of CoffeeScript and Stylus** to write all the semicolons you want. Also, because Bootstrap is also included, there's additional LESS support for those of you who are somewhere in the middle ;)

Oh yeah, only [Bootstrap's](http://twitter.github.io/bootstrap/) CSS is included, none of the JavaScript plugins. See [UI Bootstrap](http://angular-ui.github.io/bootstrap/) for an AngularJS port of Bootstrap's JavaScript.

Getting Started
---------------

Make sure to have [Brunch](http://brunch.io/) installed.

Create your project using Cinnamon Toast Brunch with:

    brunch new https://github.com/Anaphase/cinnamon-toast-brunch.git <your-project-name>

Or simply copy the repository to your hard drive and rename it. Then install all packages with:

    npm install && bower install

Then build the project and you're good to go:

    brunch w --server

Sample Project
---------------

A simple todo app is included as a sort of boiler plate. The app demonstrates basic use of controllers, directives, filters, and services so it should give you a good idea of how to structure your new project.

### Automatic Router Generation via siml-angular-brunch

Cinnamon Toast Brunch uses [siml-angular-brunch](http://github.com/Anaphase/siml-angular-brunch) to compile your SIML and inject the templates into the `$templateCache`. siml-angular-brunch can also optionally generate a simple AngularJS router for you. See [the documentation](https://github.com/Anaphase/siml-angular-brunch/blob/master/README.md#optional-router-generation) for details on how to enable and configure the router.


Customize Bootstrap
-------------------

All Bootstrap stylesheet files can be found separated into `vendor/styles/bootstrap`. They're in the original [LESS](http://lesscss.org/) format in order to be easily customized and compiled together with the app build.

License
-------

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
