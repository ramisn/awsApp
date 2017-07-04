# Fix the environment
if ENV['STAGING']
  %w(RACK_ENV RAILS_ENV).each do |key|
    ENV[key] = 'staging'
  end
end
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
AwsApp::Application.initialize!
