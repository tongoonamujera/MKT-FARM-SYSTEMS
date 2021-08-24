class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :company_name
      t.date :date
      t.string :season
      t.string :item
      t.string :unit
      t.string :unit_price
      t.string :total_items
      t.string :total_amount
      t.string :VAT
      t.string :pro_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
