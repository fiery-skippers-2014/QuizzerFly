require 'rubygems'
# require 'factory_girl'

#  require 'factory_girl'
#   Dir[File.dirname(__FILE__)+"/factories/*.rb"].each {|file| require file }
  
# require 'factories'
# All our specs should require 'spec_helper' (this file)

# If RACK_ENV isn't set, set it to 'test'.  Sinatra defaults to development,
# so we have to override that unless we want to set RACK_ENV=test from the
# command line when we run rake spec.  That's tedious, so do it here.
ENV['RACK_ENV'] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'shoulda-matchers'
require 'rack/test'
require 'capybara'
require 'capybara/rspec'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  
  # # if you want to build(:user) instead of Factory.build(:user)
  # config.include Factory::Syntax::Methods
  # config.order = "random"
  config.include Capybara::DSL
end

def app
  Sinatra::Application
end

# FactoryGirl.definition_file_paths = %w{./factories ./test/factories ./spec/factories}
# FactoryGirl.find_definitions


