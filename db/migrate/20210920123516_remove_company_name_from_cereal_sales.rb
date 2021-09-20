class RemoveCompanyNameFromCerealSales < ActiveRecord::Migration[6.0]
  def change
    remove_column :cereal_sales, :Company_Name, :string
    remove_column :cereal_sales, :Date, :date
    remove_column :cereal_sales, :Season, :string
    remove_column :cereal_sales, :Farm_Name, :string
    remove_column :cereal_sales, :Grower_Name, :string
    remove_column :cereal_sales, :Truck_Number, :string
    remove_column :cereal_sales, :Trailer_Number, :string
    remove_column :cereal_sales, :Test_Density, :string
    remove_column :cereal_sales, :External_Matter, :string
    remove_column :cereal_sales, :Gross_Mass, :string
    remove_column :cereal_sales, :Tare, :string
    remove_column :cereal_sales, :Net_Mass, :string
    remove_column :cereal_sales, :Price_Per_Tonne, :string
    remove_column :cereal_sales, :Quantity, :string
    remove_column :cereal_sales, :Amount_Paid, :string
    remove_column :cereal_sales, :Pro_Number, :string

    add_column :cereal_sales, :company_name, :string
    add_column :cereal_sales, :date, :date
    add_column :cereal_sales, :season, :string
    add_column :cereal_sales, :farm_name, :string
    add_column :cereal_sales, :grower_name, :string
    add_column :cereal_sales, :truck_number, :string
    add_column :cereal_sales, :trailer_number, :string
    add_column :cereal_sales, :test_density, :string
    add_column :cereal_sales, :external_matter, :string
    add_column :cereal_sales, :gross_mass, :decimal
    add_column :cereal_sales, :tare, :string
    add_column :cereal_sales, :net_mass, :decimal
    add_column :cereal_sales, :price_per_tonne, :decimal
    add_column :cereal_sales, :quantity, :decimal
    add_column :cereal_sales, :amount_paid, :decimal
    add_column :cereal_sales, :pro_number, :string
  end
end
