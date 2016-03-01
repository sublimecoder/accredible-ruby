require File.expand_path('../lib/accredible-ruby/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'accredible-ruby'
  s.version       = Accredible::VERSION
  s.required_ruby_version = '>= 2.0.0'
  s.date          = '2016-02-24'
  s.summary       = "Accredible API gem"
  s.description   = "A simple gem for interacting with the accredible certificate API"
  s.authors       = ["Jared Smith"]
  s.email         = 'jared.smith88@me.com'
  s.files         = ["lib/accredible.rb"]
  s.homepage      = 'https://github.com/sublimecoder/accredible'
  s.license       = 'MIT'

  s.add_dependency("rest-client", "~> 1.8")

  s.add_development_dependency("byebug", "~> 8.2")
  s.add_development_dependency("pry", "~> 0.10")
  s.add_development_dependency("pry-byebug", "~> 3.3")
  s.add_development_dependency("rake", "~> 10.5")
  s.add_development_dependency("rspec", "~> 3.4")
  s.add_development_dependency("webmock", "~> 1.16.1")

end
