class AddStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Status, :boolean, default: false
  end
end
