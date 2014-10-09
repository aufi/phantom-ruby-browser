Gem::Specification.new do |s|
  s.name        = 'phantom-ruby-browser'
  s.version     = '0.1.0'
  s.date        = '2014-10-09'
  s.summary     = "Wraps PhantomJS into Ruby code and provides basic DOM operations."
  s.description = "Wraps PhantomJS headless browser into Ruby code and provides basic DOM operations like click and get the content."
  s.authors     = ["Marek Aufart"]
  s.email       = 'aufi.cz@gmail.com'
  s.files       = `git ls-files`.split($\)
  s.test_files    = s.files.grep(%r{spec/})
  s.require_paths = ["lib"]
  s.homepage    = 'https://github.com/aufi/phantom-ruby-browser'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'phantomjs', "~> 1.9.7.1"

  s.add_development_dependency "rake", "~> 10.1.0"
  s.add_development_dependency "rspec", "~> 3.1.0"
  s.add_development_dependency "pry", "~> 0.9.12.2"
end
