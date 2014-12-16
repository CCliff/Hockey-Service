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
    seasons = player.scoring_seasons
    last_season = {}
    # seasons.map do |season|

    #   if last_season['year'] == season['year']
    #     season.tmID = "VAR"
    #     season.GP = last_season.GP + season.GP
    #     season.G = last_season.G + season.G
    #     season.A = last_season.A + season.A
    #     season.Pts = last_season.Pts + season.Pts
    #     season.PIM = last_season.PIM + season.PIM
    #     season.PlusMinus = last_season.PlusMinus + season.PlusMinus
    #     season.PPG = last_season.PPG + season.PPG
    #     season.PPA = last_season.PPA + season.PPA
    #     season.SHG = last_season.SHG + season.SHG
    #     season.SHA = last_season.SHA + season.SHA
    #     season.GWG = last_season.GWG + season.GWG
    #     season.SOG = last_season.SOG + season.SOG
    #   end

    #   last_season = season
    #   season

    # end

    data = {
      player: player,
      seasons: seasons
    }
    data.to_json
  end
end