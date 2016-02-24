Gem::Specification.new do |s|
  s.name          = 'accredible'
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

  s.add_dependency("httparty")

  s.add_development_dependency("byebug")
  s.add_development_dependency("pry")
  s.add_development_dependency("pry-byebug")
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
end
