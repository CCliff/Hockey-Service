require 'bundler'
Bundler.require

require 'csv'
require 'pry'
require 'sinatra/activerecord/rake'
require_relative 'connection.rb'

ROOT_PATH = Dir.pwd
Dir[ROOT_PATH+"/app/models/*.rb"].each do |file|
  require file
  puts "requiring #{file}"
end

namespace :db do
  desc "add hockey data to the db"
  task :hockey_data do
    Rake::Task[:player_data].execute
    Rake::Task[:scoring_season_data].execute

  end
  desc "add player hockey data to the db"
  task :player_data do
    csv_text = File.read('data/Master.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Player.create!(row.to_hash)
    end
  end
  desc "add scoring hockey data to the db"
  task :scoring_season_data do
    csv_text = File.read('data/Scoring.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      ScoringSeason.create!(row.to_hash)
    end
  end
  desc "add team hockey data to the db"
  task :team_data do
    csv_text = File.read('data/Teams.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Team.create!(row.to_hash)
    end
  end

end