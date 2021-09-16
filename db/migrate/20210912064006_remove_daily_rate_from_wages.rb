class RemoveDailyRateFromWages < ActiveRecord::Migration[6.0]
  def change
    remove_column :wages, :daily_rate, :string
    remove_column :wages, :worker_status, :string
    remove_column :wages, :Company_Name, :string
    remove_column :wages, :Farm_Name, :string
    remove_column :wages, :Pro_Number, :string
    add_column :wages, :company_name, :string
    add_column :wages, :farm_name, :string
    add_column :wages, :season, :string
    add_column :wages, :days_worked, :string
    add_column :wages, :gross, :decimal
    add_column :wages, :payee, :decimal
    add_column :wages, :allowance, :decimal
    add_column :wages, :nssa, :decimal
    add_column :wages, :cash_requests, :decimal
    add_column :wages, :other_deductions, :decimal
    add_column :wages, :net, :decimal
    add_column :wages, :month, :string
    add_column :wages, :nec, :decimal
  end
end
