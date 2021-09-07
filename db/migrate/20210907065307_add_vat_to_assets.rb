class AddVatToAssets < ActiveRecord::Migration[6.0]
  def change
    add_column :assets, :vat, :decimal
  end
end
