class RenameTypeToTypesInDeliveries < ActiveRecord::Migration[6.0]
  def change
    rename_column :deliveries, :type, :types
  end
end
