require 'selenium-webdriver'
require 'capybara/cucumber'


Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
end