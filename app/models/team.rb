class Team < ActiveRecord::Base
  self.primary_keys = :tmID, :year
  has_many :scoring_seasons, foreign_key: [:tmID, :year]
  has_many :players, :through => :scoring_seasons
end