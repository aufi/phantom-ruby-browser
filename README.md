PhantomRubyBrowser
===============

Wraps PhantomJS headless browser into Ruby code and provides basic DOM operations like click and get the content.

**Under development (October 2014)**

Example
-------
Print DOM of javascript rendered page
```ruby
browser = PhantomRubyBrowser.new("http://google.com/analytics")
puts browser.content
```

Open page, click on a link and save DOM
```ruby
browser = PhantomRubyBrowser.new("http://google.com/analytics")
puts browser.content_after_click('a.ga-button')
```

Command line example
```
$ irb
1.9.3-p547 :002 > require 'phantom_ruby_browser'
 => true
1.9.3-p547 :003 > browser = PhantomRubyBrowser.new("http://google.com/analytics")
 => #<PhantomRubyBrowser:0x00000001daf0d8 @location="http://google.com/analytics", @phantomjs=Phantomjs>
1.9.3-p547 :006 > browser.content
 => "<html class=\"google-js\" lang=\"cs\"><head>\n\n ..."
```

How does it work
----------------
 * PhantomJS binary is provided by https://github.com/colszowka/phantomjs-gem
 * Ruby command is translated into javascript steps and passed to PhantomJS
 * Output is returned

License
-------
Released under [MIT license](https://github.com/aufi/photo_geoloader/blob/master/LICENSE)