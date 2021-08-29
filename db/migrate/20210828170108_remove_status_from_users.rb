class RemoveStatusFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :Status, :boolean
    add_column :users, :status, :boolean, default: false
  end
end
