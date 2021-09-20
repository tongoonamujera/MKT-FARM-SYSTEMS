class RemoveCompanyNameFromRationings < ActiveRecord::Migration[6.0]
  def change
    remove_column :rationings, :Company_Name, :string
    remove_column :rationings, :Date, :date
    remove_column :rationings, :Season, :string
    remove_column :rationings, :Farm_Name, :string
    remove_column :rationings, :Cereal_Name, :string
    remove_column :rationings, :KGS_Issued, :string
    remove_column :rationings, :Pro_Number, :string
    add_column :rationings, :pro_number, :string
    add_column :rationings, :date, :date
    add_column :rationings, :season, :string
    add_column :rationings, :farm_name, :string
    add_column :rationings, :company_name, :string
    add_column :rationings, :cereal_name, :string
    add_column :rationings, :issued_to, :string
    add_column :rationings, :price, :decimal
    add_column :rationings, :kgs_issued, :decimal
    add_column :rationings, :is_sold, :boolean, default: false
  end
end
