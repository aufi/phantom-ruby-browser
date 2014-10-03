require 'spec_helper.rb'

describe PhantomRubyBrowser do

  let(:browser){ PhantomRubyBrowser.new("file://#{File.expand_path('spec/support/test_page_1.html')}") }

  describe 'open page' do
    it 'loads phantomjs' do
      expect(browser.phantomjs.path).not_to be_nil
    end

    it 'html' do
      expect(browser.content).not_to be_nil
      expect(browser.content).to include 'First test page'
    end

    it 'with javascript' do
      expect(browser.content).to include 'javascript_loaded'
    end
  end

  describe 'click' do
    it 'follow normal link' do
      expect(browser.content_after_click('p > a')).to include 'Second test page'
    end
  end
end