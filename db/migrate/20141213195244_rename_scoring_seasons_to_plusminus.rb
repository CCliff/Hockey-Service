class RenameScoringSeasonsToPlusminus < ActiveRecord::Migration
  def change
    rename_column :scoring_seasons, :'+/-', :PlusMinus
    rename_column :scoring_seasons, :'Post+/-', :PostPlusMinus
  end
end
