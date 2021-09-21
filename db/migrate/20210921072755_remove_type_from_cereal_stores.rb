class RemoveTypeFromCerealStores < ActiveRecord::Migration[6.0]
  def change
    remove_column :cereal_stores, :type, :string
    add_column :cereal_stores, :types, :string
  end
end
