require 'capybara'
require 'capybara/dsl'
require 'faker'
require 'cpf_faker'
require 'ostruct'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'rspec/wait'
require 'clipboard'
require 'selenium/webdriver/common/wait'
require_relative 'page_helper.rb'
require_relative 'helper.rb'
require 'dotenv/load'

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE'] #homolog

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml") # homolog.yml

World(Capybara::DSL, Capybara::RSpecMatchers)
World(PageObjects)
World(Helper)

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--window-size=1530,860')
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')

driver = Selenium::WebDriver.for :chrome, url: 'http://localhost:4444/wd/hub', options: options

Capybara.default_max_wait_time = 20
Capybara.register_driver :selenium do |app|
    
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
    elsif BROWSER.eql?('ie')
        Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
    elsif BROWSER.eql?('safari')
        Capybara::Selenium::Driver.new(app, :browser => :safari)
    elsif BROWSER.eql?('poltergeist')
    obtions = { js_errors: false}
    Capybara::Poltergeist::Driver.new(app, obtions)
end
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG["url_padrao"]
    config.default_max_wait_time = 20
end
driver.quit
