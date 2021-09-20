class RemoveInputNameFromCerealStores < ActiveRecord::Migration[6.0]
  def change
    remove_column :cereal_stores, :Input_Name, :string
    remove_column :cereal_stores, :Company_Name, :string
    remove_column :cereal_stores, :Date, :date
    remove_column :cereal_stores, :Season, :string
    remove_column :cereal_stores, :Farm_Name, :string
    remove_column :cereal_stores, :Type, :string
    remove_column :cereal_stores, :Quantity, :string
    remove_column :cereal_stores, :Unit, :string
    remove_column :cereal_stores, :Unit_Price, :string
    remove_column :cereal_stores, :Total_Amount, :string
    remove_column :cereal_stores, :Pro_Number, :string

    add_column :cereal_stores, :cereal_name, :string
    add_column :cereal_stores, :company_name, :string
    add_column :cereal_stores, :date, :date
    add_column :cereal_stores, :season, :string
    add_column :cereal_stores, :farm_name, :string
    add_column :cereal_stores, :type, :string
    add_column :cereal_stores, :quantity, :decimal
    add_column :cereal_stores, :unit, :string
    add_column :cereal_stores, :unit_price, :decimal
    add_column :cereal_stores, :total_amount, :decimal
    add_column :cereal_stores, :pro_number, :string
    add_column :cereal_stores, :is_bought, :boolean, default: false
  end
end
