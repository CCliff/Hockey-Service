class Player < ActiveRecord::Base
  self.primary_key = 'playerID'
  has_many :scoring_seasons, foreign_key: 'playerID'
  has_many :teams, :through => :scoring_seasons

  scope :team, proc { |teams|
    teams ? where(:'"teams".tmID' => teams) : all
  }
  scope :year, proc { |years|
    years ? where(:'"teams".year' => years) : all
  }
end