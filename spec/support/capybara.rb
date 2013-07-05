require "selenium-webdriver"

Capybara.register_driver :selenium do |app|
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.timeout = 10
    Capybara::Selenium::Driver.new(app,
                               :browser => :chrome,
                               :http_client => client)
end
Capybara.javascript_driver = :selenium
Capybara.default_wait_time = 10