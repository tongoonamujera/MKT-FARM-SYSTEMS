class RemoveTypeFromStores < ActiveRecord::Migration[6.0]
  def change
    remove_column :stores, :type, :string
    add_column :stores, :types, :string
  end
end
