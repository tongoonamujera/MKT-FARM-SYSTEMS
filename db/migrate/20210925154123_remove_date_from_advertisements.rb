class RemoveDateFromAdvertisements < ActiveRecord::Migration[6.0]
  def change
    remove_column :advertisements, :date, :string
    add_column :advertisements, :date, :date
  end
end
