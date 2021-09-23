class AddTopUpToCerealStores < ActiveRecord::Migration[6.0]
  def change
    add_column :cereal_stores, :top_up, :decimal
  end
end
