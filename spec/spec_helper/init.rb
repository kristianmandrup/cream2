ENV["RAILS_ENV"] = "test"
environment_file = File.expand_path("../../dummy_apps/#{APP_NAME}/config/environment.rb",  __FILE__)
require environment_file
require "rails/test_help"
require "rspec/rails"
require "steak"

ActionMailer::Base.delivery_method = :test
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.default_url_options[:host] = "test.com"

Rails.backtrace_cleaner.remove_silencers!

# Configure capybara for integration testing
require "capybara/rails"
Capybara.default_driver   = :rack_test
Capybara.default_selector = :css
