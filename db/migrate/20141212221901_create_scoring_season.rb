class CreateScoringSeason < ActiveRecord::Migration
  def change
    create_table :scoring_seasons do |t|
      t.string 'playerID'
      t.integer 'year'
      t.integer 'stint'
      t.string 'tmID'
      t.string 'lgID'
      t.string 'pos'
      t.integer 'GP'
      t.integer 'G'
      t.integer 'A'
      t.integer 'Pts'
      t.integer 'PIM'
      t.integer '+/-'
      t.integer 'PPG'
      t.integer 'PPA'
      t.integer 'SHG'
      t.integer 'SHA'
      t.integer 'GWG'
      t.integer 'GTG'
      t.integer 'SOG'
      t.integer 'PostGP'
      t.integer 'PostG'
      t.integer 'PostA'
      t.integer 'PostPts'
      t.integer 'PostPIM'
      t.integer 'Post+/-'
      t.integer 'PostPPG'
      t.integer 'PostPPA'
      t.integer 'PostSHG'
      t.integer 'PostSHA'
      t.integer 'PostGWG'
      t.integer 'PostSOG'
    end

  end
end
