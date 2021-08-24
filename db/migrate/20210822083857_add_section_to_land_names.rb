class AddSectionToLandNames < ActiveRecord::Migration[6.0]
  def change
    add_column :land_names, :section, :string
  end
end
