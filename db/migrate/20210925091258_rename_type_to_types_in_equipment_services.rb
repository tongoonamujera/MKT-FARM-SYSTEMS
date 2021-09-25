class RenameTypeToTypesInEquipmentServices < ActiveRecord::Migration[6.0]
  def change
    rename_column :equipment_services, :type, :types
  end
end
