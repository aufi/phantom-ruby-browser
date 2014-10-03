require 'phantomjs'

class PhantomRubyBrowser

  attr_reader :phantomjs, :location

  def initialize(location)
    @location = location
    @phantomjs = Phantomjs
  end

  def content
    execute "var page = require('webpage').create();
page.open('#{@location}', function() {
var js = page.evaluate(function () {
        return document;
    });
    console.log(js.all[0].outerHTML);
  phantom.exit();
});"
  end

  def content_after_click(link_selector = 'a')
    execute "var page = require('webpage').create();
    page.open('#{@location}', function() {
      var coords = page.evaluate(function(){
        return document.querySelector('#{link_selector}').getBoundingClientRect();
      });
      page.sendEvent('click', coords.left, coords.top);
      var js = page.evaluate(function () {
        return document;
      });
      console.log(js.all[0].outerHTML);
      phantom.exit();
    });"
  end

  private

  def execute(commands)
    result = ""
    steps_file = Tempfile.new('prb_steps')
    begin
      steps_file.write(commands)
      steps_file.flush
      result = @phantomjs.run(steps_file.path)
    ensure
      steps_file.close
      steps_file.unlink
    end
    result
  end

  def prepare_steps

  end

end