class RemoveSeasonFromStores < ActiveRecord::Migration[6.0]
  def change
    remove_column :stores, :Season, :string
    add_column :stores, :season, :string
  end
end
