$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'jquery_mockjax_rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'jquery_mockjax_rails'
  s.version     = JqueryMockjaxRails::VERSION
  s.authors     = ['Thach Chau']
  s.email       = ['rog.kane@gmail.com']
  s.homepage    = 'http://github.com/chautoni'
  s.summary     = 'Use jquery.mockjax in RSpec with Rails 3'
  s.description = 'This gem provides jQuery Mockjax support in Rspec integration testing with Capybara'

  s.files = `git ls-files`.split("\n")
  s.require_path = 'lib'

  s.add_dependency 'rails'
  s.add_dependency 'rspec-rails'
  s.add_dependency 'capybara'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'debugger'
  s.add_development_dependency 'spring'
  s.add_development_dependency 'poltergeist'
end
