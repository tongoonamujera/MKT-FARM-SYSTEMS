class RemoveCompanyNameFromAdvertisements < ActiveRecord::Migration[6.0]
  def change
    remove_column :advertisements, :Company_Name, :string
    remove_column :advertisements, :Date, :date
    remove_column :advertisements, :Item_Type, :string
    remove_column :advertisements, :item_Name, :string
    remove_column :advertisements, :Unit, :string
    remove_column :advertisements, :Unit_Price, :string
    remove_column :advertisements, :VAT, :string
    remove_column :advertisements, :Total_Amount, :string

    add_column :advertisements, :company_name, :string
    add_column :advertisements, :date, :string
    add_column :advertisements, :item_type, :string
    add_column :advertisements, :item_name, :string
    add_column :advertisements, :unit, :string
    add_column :advertisements, :unit_price, :decimal
    add_column :advertisements, :vat, :decimal
    add_column :advertisements, :total_amount, :decimal
  end
end
