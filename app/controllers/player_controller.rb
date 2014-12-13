class PlayerController < ApplicationController
  get '/' do
    content_type :json
    # split the query string into an array of values to be passed into the the procs
    teams = params['team'].split(',') if params['team']
    years = params['year'].split(',') if params['year']
    Player.joins(:teams).select('"players"."playerID","players"."firstName", "players"."lastName", "teams"."name", "teams"."year"').team(teams).year(years).to_json
  end
end