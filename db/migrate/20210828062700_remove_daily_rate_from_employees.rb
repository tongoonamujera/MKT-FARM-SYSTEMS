class RemoveDailyRateFromEmployees < ActiveRecord::Migration[6.0]
  def change
    remove_column :employees, :daily_rate, :string
    add_column :employees, :daily_rate, :decimal
  end
end
