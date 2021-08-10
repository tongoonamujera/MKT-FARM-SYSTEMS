class CreateWorkshops < ActiveRecord::Migration[6.0]
  def change
    create_table :workshops do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Farm_Name
      t.string :Item
      t.string :Quantity
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
