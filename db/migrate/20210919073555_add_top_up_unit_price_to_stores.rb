class AddTopUpUnitPriceToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :top_up_unit_price, :decimal
  end
end
