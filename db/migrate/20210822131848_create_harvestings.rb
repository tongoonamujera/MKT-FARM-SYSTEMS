class CreateHarvestings < ActiveRecord::Migration[6.0]
  def change
    create_table :harvestings do |t|
      t.string :Compnay_Name
      t.date :Date
      t.string :Season
      t.string :Farm_Name
      t.string :Section
      t.string :Crop
      t.string :KGS_Done
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
