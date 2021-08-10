class CreateLandNames < ActiveRecord::Migration[6.0]
  def change
    create_table :land_names do |t|
      t.string :Company_name
      t.date :Date
      t.string :Season
      t.string :Farm_nameSection
      t.string :Hectrage
      t.string :Crop
      t.string :Pro_Number

      t.timestamps
    end
  end
end
