class CreateCashflows < ActiveRecord::Migration[6.0]
  def change
    create_table :cashflows do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Month
      t.string :Grower_Name
      t.string :Hectrage
      t.string :Operation
      t.string :Unit_Price
      t.string :quantity_per_hectre
      t.string :Unity
      t.string :Input_Name
      t.string :Total_Amount
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
