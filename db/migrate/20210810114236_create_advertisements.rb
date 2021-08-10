class CreateAdvertisements < ActiveRecord::Migration[6.0]
  def change
    create_table :advertisements do |t|
      t.string :Company_Name
      t.date :Date
      t.string :Item_Type
      t.string :item_Name
      t.string :Unit
      t.string :Unit_Price
      t.string :VAT
      t.string :Total_Amount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
