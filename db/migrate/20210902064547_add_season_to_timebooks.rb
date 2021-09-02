class AddSeasonToTimebooks < ActiveRecord::Migration[6.0]
  def change
    add_column :timebooks, :season, :string
  end
end
