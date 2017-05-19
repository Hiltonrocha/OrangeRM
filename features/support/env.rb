#encoding: utf-8

require 'cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'site_prism'
require 'rest-client'
require 'pry'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :edge)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 15
Capybara.page.driver.browser.manage.window.maximize
						
include Capybara::DSL
include RSpec::Matchers
World(Capybara::DSL)
