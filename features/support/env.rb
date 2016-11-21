require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.run_server = false
Capybara.app_host = "https://www.redfin.com"
Capybara.default_driver = :selenium
