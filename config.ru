require 'bundler'
Bundler.require

# Allow CORS on Heroku
require 'rack/cors'
use Rack::Cors do

# allow all origins in development
  allow do
    origins '*'
    resource '*',
        :headers => :any,
        :methods => [:get, :post, :delete, :put, :options]
  end
end

# database connections
require './connection'
# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

# require application files
ROOT_PATH = Dir.pwd
Dir[ROOT_PATH+"/app/models/*.rb"].each do |file|
  require file
  puts "requiring #{file}"
end

# require controllers in the correct order (application_controller first)
require './app/controllers/application_controller'
require './app/controllers/player_controller'

# map routes to the correct controllers for routing
map('/api/players'){run PlayerController}
map('/'){run ApplicationController}