Brauhaus.js BJCP Styles Plugin
==============================
[![Dependency Status](https://gemnasium.com/homebrewing/brauhaus-styles.png)](https://gemnasium.com/homebrewing/brauhaus-styles) [![Build Status](https://travis-ci.org/homebrewing/brauhaus-styles.png?branch=master)](https://travis-ci.org/homebrewing/brauhaus-styles) [![Coverage Status](https://coveralls.io/repos/homebrewing/brauhaus-styles/badge.png?branch=master)](https://coveralls.io/r/homebrewing/brauhaus-styles?branch=master) [![NPM version](https://badge.fury.io/js/brauhaus-styles.png)](http://badge.fury.io/js/brauhaus-styles)

A plugin for [Brauhaus.js](https://github.com/homebrewing/brauhausjs) that adds [BJCP Styles](http://www.bjcp.org/2008styles/catdex.php). Features include:

 * Support for multiple Javascript runtimes
   * [Node.js](http://nodejs.org/) 0.8.19+, 0.10.x
   * Chrome, Firefox, Internet Explorer 9+, Safari, Opera, etc
 * About 80 BJCP Styles defined in the catalog
 * Functions to list categories and styles
 * About 12kb when minified

Interactive Examples
--------------------

 * [Brauhaus BJCP Styles (Coffeescript)](http://jsfiddle.net/danielgtaylor/q5rHF/)

Installation
------------
There are two ways to use Brauhaus.js - either in a web browser (client-side) or on e.g. Node.js (server-side).

### Web Browser (client-side use)
To use Brauhaus.js in a web browser, simply download the following files and include them as you would any other script:

 * [Download the latest brauhaus.min.js](https://raw.github.com/homebrewing/brauhausjs/master/dist/brauhaus.min.js)
 * [Download the latest brauhaus-styles.min.js](https://raw.github.com/homebrewing/brauhaus-styles/master/dist/brauhaus-styles.min.js)

```html
<script type="text/javascript" src="/scripts/brauhaus.min.js"></script>
<script type="text/javascript" src="/scripts/brauhaus-styles.min.js"></script>
<script type="text/javascript">
    // Your code goes here!
    // See below for an example...
</script>
```

### Node.js (server-side use)
For Node.js, you can easily install Brauhaus.js plugins using `npm`:

```bash
npm install brauhaus-styles
```

Quick Example
-------------

```javascript
// The following line is NOT required for web browser use
var Brauhaus = require('brauhaus');

// Import plugins here, e.g.
require('brauhaus-beerxml');

// Create a recipe
var r = new Brauhaus.Recipe({
    name: 'My test brew',
    description: 'A new test beer using Brauhaus.js!',
    batchSize: 20.0,
    boilSize: 10.0,
    style: Brauhaus.getStyle('Bock', 'Doppelbock')
});

...
```

Beer Styles
-----------
The styles plugin adds many pre-defined BJCP styles to Brauhaus.

### Brauhaus.STYLES
An object where the keys are categories and the values are objects that contain a group of styles. The styles are objects with ranges for gravities, bitterness, color, and carbonation. The functions below are used to get information from these objects.

### Brauhaus.getStyleCategories ()
Get a list of BJCP style categories supported by Brauhaus.

```javascript
>>> Brauhaus.getStyleCategories()
['Light Lager', 'Pilsner', 'Bock', ...]
```

### Brauhaus.getStyles (string)
Get a list of styles for a particular category

```javascript
>>> Brauhaus.getStyles('Bock')
['Maibock / Helles Bock', 'DoppelBock', ...]
```

### Brauhaus.getStyle (category, style)
Get an object representing a particular style.

```javascript
>>> Brauhaus.getStyle('Bock', 'Doppelbock')
{
    name: 'Doppelbock',
    category: 'Bock',
    gu: [1.072, 1.112],
    fg: [1.016, 1.024],
    srm: [6, 25],
    ibu: [16, 26],
    abv: [7, 10],
    carb: [1.6, 2.4]
}
```

Contributing
------------
Contributions are welcome - just fork the project and submit a pull request when you are ready!

### Getting Started
First, create a fork on GitHub. Then:

```bash
git clone ...
cd brauhaus-styles
npm install
```

### Style Guide
Brauhaus uses the [CoffeeScript Style Guide](https://github.com/polarmobile/coffeescript-style-guide) with the following exceptions:

 1. Indent 4 spaces
 1. Maximum line length is 120 characters

When building `brauhaus.js` with `cake build` or `npm test` you will see the output of [CoffeeLint](http://www.coffeelint.org/), a static analysis code quality tool for CoffeeScript. Please adhere to the warnings and errors to ensure your changes will build.

### Unit Tests
Before submitting a pull request, please add any relevant tests and run them via:

```bash
npm test
```

If you have PhantomJS installed and on your path then you can use:

```bash
CI=true npm test
```

Pull requests will automatically be tested by Travis CI both in Node.js 0.6/0.8/0.10 and in a headless webkit environment (PhantomJS). Changes that cause tests to fail will not be accepted. New features should be tested to be accepted.

New tests can be added in the `test` directory. If you add a new file there, please don't forget to update the `test.html` to include it!

### Code Coverage
You can generate a unit test code coverage report for unit tests using the following:

```bash
cake coverage
```

You can find an HTML report in the `coverage` directory that is created. This report will show line-by-line code coverage information.

---

Please note that all contributions will be licensed under the MIT license in the following section.

License
-------
Copyright (c) 2013 Daniel G. Taylor

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
