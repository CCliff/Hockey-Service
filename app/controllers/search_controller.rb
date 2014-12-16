class SearchController < ApplicationController
    get '/' do
      search = params['search']
      year = params['year']
      year = nil if year == 'nil'

        teams = Team.where('lower(name) LIKE ?', '%' + search.downcase + '%').year(year)
        players = Player.joins(:teams).distinct.where('lower("firstName") LIKE ? OR lower("lastName") LIKE ?', '%' + search.downcase + '%', '%' + params['search'].downcase + '%').year(year)

        data = {teams: teams, players: players}
        data.to_json
    end
end