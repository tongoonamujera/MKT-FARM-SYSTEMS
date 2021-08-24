class CreateRationings < ActiveRecord::Migration[6.0]
  def change
    create_table :rationings do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Farm_Name
      t.string :Cereal_Name
      t.string :KGS_Issued
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
