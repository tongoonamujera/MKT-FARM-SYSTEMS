class CreateInputStoresUsages < ActiveRecord::Migration[6.0]
  def change
    create_table :input_stores_usages do |t|
      t.string :company_name
      t.string :season
      t.date :date
      t.string :farm_name
      t.string :input_name
      t.string :quantity_used
      t.string :unit
      t.string :total_amount
      t.string :profile_number
      t.boolean :deleted, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
