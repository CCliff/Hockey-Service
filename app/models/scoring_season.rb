class ScoringSeason < ActiveRecord::Base
  self.primary_keys = :playerID, :year
  belongs_to :player, foreign_key: 'playerID'
  belongs_to :team, foreign_key: ['tmID', 'year']

  attr_accessor :seasons

end