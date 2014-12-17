class PlayerController < ApplicationController
  get '/' do
    content_type :json
    # split the query string into an array of values to be passed into the the procs
    teams = params['team'].split(',') if params['team']
    years = params['year'].split(',') if params['year']
    Player.joins(:teams).select('"players"."playerID","players"."firstName", "players"."lastName", "players"."pos", "teams"."name", "teams"."year"').team(teams).year(years).to_json
  end

  get '/show' do
    content_type :json
    player = Player.find_by(playerID: params['id'])
    seasons = player.scoring_seasons.order(year: :asc)

    data = {
      player: player,
      seasons: seasons
    }
    data.to_json
  end
end