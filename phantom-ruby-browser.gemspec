Gem::Specification.new do |s|
  s.name        = 'phantom-ruby-browser'
  s.version     = '0.0.1'
  s.date        = '2014-10-03'
  s.summary     = "Wraps PhantomJS into Ruby code and provides basic DOM operations."
  s.description = "Wraps PhantomJS headless browser into Ruby code and provides basic DOM operations like click and get the content."
  s.authors     = ["Marek Aufart"]
  s.email       = 'aufi.cz@gmail.com'
  s.files       = `git ls-files`.split($\)
  s.require_paths = ["lib"]
  s.homepage    = 'https://github.com/aufi/phantom-ruby-browser'
  s.license     = 'MIT'

  s.add_dependency 'phantomjs', "~> 1.9.7.1", '>= 1.9.7.1'

  s.add_development_dependency "rake", "~> 10.1.0", ">= 10.1.0"
  s.add_development_dependency "rspec", "~> 3.1.0", ">= 3.1.0"
  s.add_development_dependency "pry", "~> 0.9.12.2", ">= 0.9.12.2"
end
