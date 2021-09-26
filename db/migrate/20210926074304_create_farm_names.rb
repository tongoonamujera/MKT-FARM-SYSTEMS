class CreateFarmNames < ActiveRecord::Migration[6.0]
  def change
    create_table :farm_names do |t|
      t.string :user_farm_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
