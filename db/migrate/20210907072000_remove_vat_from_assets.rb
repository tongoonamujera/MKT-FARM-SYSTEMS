class RemoveVatFromAssets < ActiveRecord::Migration[6.0]
  def change
    remove_column :assets, :vat, :decimal
    add_column :assets, :vat, :string
  end
end
