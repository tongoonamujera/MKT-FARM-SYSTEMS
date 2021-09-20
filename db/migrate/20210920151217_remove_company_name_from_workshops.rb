class RemoveCompanyNameFromWorkshops < ActiveRecord::Migration[6.0]
  def change
    remove_column :workshops, :Company_Name, :string
    remove_column :workshops, :Date, :date
    remove_column :workshops, :Season, :string
    remove_column :workshops, :Farm_Name, :string
    remove_column :workshops, :Item, :string
    remove_column :workshops, :Quantity, :string
    remove_column :workshops, :Pro_Number, :string

    add_column :workshops, :company_name, :string
    add_column :workshops, :date, :date
    add_column :workshops, :season, :string
    add_column :workshops, :farm_name, :string
    add_column :workshops, :item, :string
    add_column :workshops, :quantity, :decimal
    add_column :workshops, :pro_number, :string
  end
end
