class RemoveSeasonFromSetSeasons < ActiveRecord::Migration[6.0]
  def change
    remove_column :set_seasons, :Season, :string
    remove_column :set_seasons, :Date, :date

    add_column :set_seasons, :season, :string
    add_column :set_seasons, :date, :date
  end
end
