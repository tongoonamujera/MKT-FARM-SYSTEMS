class CreateIrriagtionSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :irriagtion_schedules do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Farm_Name
      t.string :Section
      t.string :Crop
      t.string :Calibration
      t.string :Mls
      t.date :Start_Date
      t.date :End_Date
      t.string :turn_around_time
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
