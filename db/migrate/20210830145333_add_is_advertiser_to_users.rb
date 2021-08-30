class AddIsAdvertiserToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_advertiser, :boolean, default: false
    add_column :users, :is_contractor, :boolean, default: false
  end
end
