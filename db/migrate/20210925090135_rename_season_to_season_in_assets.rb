class RenameSeasonToSeasonInAssets < ActiveRecord::Migration[6.0]
  def change
    rename_column :assets, :Season, :season
  end
end
