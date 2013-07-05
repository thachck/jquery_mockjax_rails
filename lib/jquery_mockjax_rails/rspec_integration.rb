require 'rspec-rails'

RSpec.configure do |config|
  config.include JqueryMockjaxRails::Helper

  config.after :each do
    JqueryMockjaxRails.clean
  end
end