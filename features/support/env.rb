require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
# Pry.config.color = true

SitePrism.configure do |config|
  config.use_implicit_waits = true
end

Capybara.register_driver :chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' => ['--start-maximized'] })
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.default_driver = :chrome
Capybara.default_max_wait_time = 15
#Capybara.page.driver.browser.manage.window.maximize