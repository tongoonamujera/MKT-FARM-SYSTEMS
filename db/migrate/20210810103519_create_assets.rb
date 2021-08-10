class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Asset
      t.string :Asset_Number
      t.string :Asset_Type
      t.string :Unit_Price
      t.string :Total_Amount
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
