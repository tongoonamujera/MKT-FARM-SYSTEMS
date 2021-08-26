class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :company_name
      t.string :farm_name
      t.string :employee_name
      t.string :employee_number
      t.string :daily_rate
      t.string :worker_status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
