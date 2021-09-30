class RemoveTotalAmountFromInputStoresUsages < ActiveRecord::Migration[6.0]
  def change
    remove_column :input_stores_usages, :total_amount, :string
    add_column :input_stores_usages, :total_amount, :decimal
  end
end
