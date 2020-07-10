require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"

##require_relative "helpers"

#World(Helpers)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://www.viajanet.com.br"
end