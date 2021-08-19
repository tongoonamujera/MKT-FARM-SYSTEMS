class AddIsAdminToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_admin, :boolean, default: false
    add_column :users, :is_manager, :boolean, default: false
    add_column :users, :is_farm_owner, :boolean, default: false
  end
end
