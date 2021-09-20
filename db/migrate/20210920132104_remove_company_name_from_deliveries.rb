class RemoveCompanyNameFromDeliveries < ActiveRecord::Migration[6.0]
  def change
    remove_column :deliveries, :Company_Name, :string
    remove_column :deliveries, :Date, :date
    remove_column :deliveries, :Season, :string
    remove_column :deliveries, :Farm_Name, :string
    remove_column :deliveries, :Section, :string
    remove_column :deliveries, :Type, :string
    remove_column :deliveries, :Delivered_by, :string
    remove_column :deliveries, :Goods, :string
    remove_column :deliveries, :Quantity, :string
    remove_column :deliveries, :Pro_Number, :string

    add_column :deliveries, :company_name, :string
    add_column :deliveries, :date, :date
    add_column :deliveries, :season, :string
    add_column :deliveries, :farm_name, :string
    add_column :deliveries, :section, :string
    add_column :deliveries, :type, :string
    add_column :deliveries, :delivered_by, :string
    add_column :deliveries, :goods, :string
    add_column :deliveries, :quantity, :string
    add_column :deliveries, :pro_number, :string
  end
end
