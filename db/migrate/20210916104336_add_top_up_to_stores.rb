class AddTopUpToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :top_up, :decimal
  end
end
