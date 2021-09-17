class RemoveQuantityUsedFromInputStoresUsages < ActiveRecord::Migration[6.0]
  def change
    remove_column :input_stores_usages, :quantity_used, :string
    add_column :input_stores_usages, :quantity_used, :decimal
  end
end
