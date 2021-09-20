class RemoveCompanyNameFromLandNames < ActiveRecord::Migration[6.0]
  def change
    remove_column :land_names, :Company_name, :string
    remove_column :land_names, :Date, :date
    remove_column :land_names, :Season, :string
    remove_column :land_names, :Farm_nameSection, :string
    remove_column :land_names, :Hectrage, :string
    remove_column :land_names, :Crop, :string
    remove_column :land_names, :Pro_Number, :string

    add_column :land_names, :company_name, :string
    add_column :land_names, :date, :date
    add_column :land_names, :season, :string
    add_column :land_names, :farm_name, :string
    add_column :land_names, :hectrage, :string
    add_column :land_names, :crop, :string
    add_column :land_names, :pro_number, :string
  end
end
