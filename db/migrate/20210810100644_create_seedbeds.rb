class CreateSeedbeds < ActiveRecord::Migration[6.0]
  def change
    create_table :seedbeds do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Farm_Name
      t.string :Section
      t.string :Item_Used
      t.string :Quantity
      t.string :Unit
      t.string :Input_Amount
      t.string :Labour_Amount
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
