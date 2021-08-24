class CreateTobaccoSales < ActiveRecord::Migration[6.0]
  def change
    create_table :tobacco_sales do |t|
      t.string :season
      t.date :date
      t.string :grower_number
      t.string :section
      t.string :sale_number
      t.string :bales_sold
      t.string :mass
      t.string :collect_bales
      t.string :average_price
      t.string :weighing_and_auction
      t.string :afforestration
      t.string :levy
      t.string :stop_oder_commission
      t.string :insurance_name
      t.string :insurance_amount
      t.string :bank_name
      t.string :bank_amount
      t.string :tianZe
      t.string :balance
      t.string :transporter_name
      t.string :transporter_amount
      t.string :other_1_name
      t.string :other_1_amount
      t.string :other_2_name
      t.string :other_2_amount
      t.string :gross_realisation
      t.string :net_realistion
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
