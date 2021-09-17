class AddTypesToInputStoresUsages < ActiveRecord::Migration[6.0]
  def change
    add_column :input_stores_usages, :types, :string
  end
end
