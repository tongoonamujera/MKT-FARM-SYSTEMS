class CreateFieldDays < ActiveRecord::Migration[6.0]
  def change
    create_table :field_days do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :place
      t.time :Start_Time
      t.string :focus

      t.timestamps
    end
  end
end
