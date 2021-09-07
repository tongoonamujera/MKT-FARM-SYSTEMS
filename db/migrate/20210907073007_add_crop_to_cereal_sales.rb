class AddCropToCerealSales < ActiveRecord::Migration[6.0]
  def change
    add_column :cereal_sales, :crop, :string
  end
end
