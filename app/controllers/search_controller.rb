class SearchController < ApplicationController
    get '/' do
      search = params['search']
      year = params['year']
      year = nil if year[0] == 'nil'

        teams = Team.where('lower(name) LIKE ?', '%' + search[0].downcase + '%').year(year).order(year: :desc).limit(25)
        players = Player.joins(:teams).distinct.where('lower("firstName") LIKE ? OR lower("lastName") LIKE ?', '%' + search[0].downcase + '%', '%' + search[0].downcase + '%').year(year).order(lastName: :asc).limit(25)

        data = {teams: teams, players: players}
        data.to_json
    end
end