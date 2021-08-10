class CreateCerealSales < ActiveRecord::Migration[6.0]
  def change
    create_table :cereal_sales do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Season
      t.string :Farm_Name
      t.string :Grower_Name
      t.string :Truck_Number
      t.string :Trailer_Number
      t.string :Test_Density
      t.string :External_Matter
      t.string :Gross_Mass
      t.string :Tare
      t.string :Net_Mass
      t.string :Price_Per_Tonne
      t.string :Quantity
      t.string :Amount_Paid
      t.string :Pro_Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
