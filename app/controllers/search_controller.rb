class SearchController < ApplicationController
    get '/' do
      search = params['search']
      year = params['year']
      year = nil if year[0] == 'nil'

        teams = Team.where('lower(name) LIKE ?', '%' + search[0].downcase + '%').year(year).order(year: :desc)
        players = Player.joins(:teams).distinct.where('lower("firstName") LIKE ? OR lower("lastName") LIKE ?', '%' + search[0].downcase + '%', '%' + search[0].downcase + '%').year(year).order(lastName: :asc)

        data = {teams: teams, players: players}
        data.to_json
    end
end