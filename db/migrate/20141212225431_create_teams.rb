class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer 'year'
      t.string 'lgID'
      t.string 'tmID'
      t.string 'franchID'
      t.string 'confID'
      t.string 'divID'
      t.integer 'rank'
      t.string 'playoff'
      t.integer 'G'
      t.integer 'W'
      t.integer 'L'
      t.integer 'T'
      t.integer 'OTL'
      t.integer 'Pts'
      t.integer 'SoW'
      t.integer 'SoL'
      t.integer 'GF'
      t.integer 'GA'
      t.string 'name'
      t.integer 'PIM'
      t.integer 'BenchMinor'
      t.integer 'PPG'
      t.integer 'PPC'
      t.integer 'SHA'
      t.integer 'PKG'
      t.integer 'PKC'
      t.integer 'SHF'

    end
  end
end
