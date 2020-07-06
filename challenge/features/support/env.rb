require 'capybara'
require 'capybara/cucumber'
require 'rubygems'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome    
end