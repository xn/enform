ENV["RAILS_ENV"] = "test"
require 'rubygems'
require 'bundler/setup'

require 'enform' # and any other gems you need

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  # some (optional) config here
end
