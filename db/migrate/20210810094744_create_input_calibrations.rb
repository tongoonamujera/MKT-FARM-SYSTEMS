class CreateInputCalibrations < ActiveRecord::Migration[6.0]
  def change
    create_table :input_calibrations do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Farm_Name
      t.string :Section
      t.string :Crop
      t.string :Variety
      t.string :Fertiiliser_TypeFertiliser_Rate
      t.string :Bags_Used
      t.string :Herbicide
      t.string :Herbicide_Rate
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
