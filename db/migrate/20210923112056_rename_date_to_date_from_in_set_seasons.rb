class RenameDateToDateFromInSetSeasons < ActiveRecord::Migration[6.0]
  def change
    rename_column :set_seasons, :date, :date_from
    add_column :set_seasons, :date_to, :date
    add_column :set_seasons, :is_active, :boolean, default: false
  end
end
