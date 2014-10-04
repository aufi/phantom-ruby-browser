PhantomRubyBrowser
===============

Wraps PhantomJS headless browser into Ruby code and provides basic DOM operations like click and get the content.

**Under development (October 2014)**

Example
-------
E.g. print DOM of javascript rendered page
```
browser = PhantomRubyBrowser.new("http://google.com/analytics")
puts browser.content
```

How does it work
----------------
 * PhantomJS binary is provided by https://github.com/colszowka/phantomjs-gem
 * Ruby command is translated into javascript steps and passed to PhantomJS
 * Output is returned

License
-------
Released under [MIT license](https://github.com/aufi/photo_geoloader/blob/master/LICENSE)