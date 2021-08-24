class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :company_name
      t.date :date
      t.string :season
      t.string :company_paid
      t.string :receipt_number
      t.string :reason
      t.string :amount_paid
      t.string :pro_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
