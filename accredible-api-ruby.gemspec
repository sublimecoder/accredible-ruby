$:.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'accredible-api-ruby/version'

Gem::Specification.new do |s|
  s.name          = 'accredible-api-ruby'
  s.version       = Accredible::VERSION
  s.required_ruby_version = '>= 2.0.0'
  s.date          = '2016-03-11'
  s.summary       = "Accredible API gem"
  s.description   = "A simple gem for interacting with the accredible certificate & badge API"
  s.authors       = ["Jared Smith", "Deepender Singla", "Alan Heppenstall"]
  s.email         = 'deepender@accredible.com'
  s.require_paths = ['lib']
  s.homepage      = 'https://github.com/accredible/accredible-api-ruby'
  s.license       = 'MIT'

  s.files = `git ls-files`.split("\n")

  s.add_dependency("rest-client", "~> 2.0.2")

  s.add_development_dependency("byebug", "~> 8.2")
  s.add_development_dependency("pry", "~> 0.10")
  s.add_development_dependency("pry-byebug", "~> 3.3")
  s.add_development_dependency("rake", "~> 10.5")
  s.add_development_dependency("rspec", "~> 3.4")
  s.add_development_dependency("webmock", "~> 1.16.1")

end
