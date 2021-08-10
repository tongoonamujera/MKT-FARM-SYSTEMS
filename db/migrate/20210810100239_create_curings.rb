class CreateCurings < ActiveRecord::Migration[6.0]
  def change
    create_table :curings do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Farm_Name
      t.string :Facility
      t.datetime :Time
      t.date :Day
      t.string :Temperature
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
