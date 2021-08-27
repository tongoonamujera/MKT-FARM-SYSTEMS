class CreateTimebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :timebooks do |t|
      t.date :date
      t.string :employee_name
      t.string :employee_number
      t.string :rate
      t.string :day
      t.string :gross
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
