class RemoveCompanyNameFromHarvestings < ActiveRecord::Migration[6.0]
  def change
    remove_column :harvestings, :Compnay_Name, :string
    remove_column :harvestings, :Date, :date
    remove_column :harvestings, :Season, :string
    remove_column :harvestings, :Farm_Name, :string
    remove_column :harvestings, :Section, :string
    remove_column :harvestings, :Crop, :string
    remove_column :harvestings, :KGS_Done, :string
    remove_column :harvestings, :Pro_Number, :string

    add_column :harvestings, :company_name, :string
    add_column :harvestings, :date, :date
    add_column :harvestings, :season, :string
    add_column :harvestings, :farm_name, :string
    add_column :harvestings, :section, :string
    add_column :harvestings, :cereal_name, :string
    add_column :harvestings, :kgs_done, :decimal
    add_column :harvestings, :pro_number, :string
  end
end
