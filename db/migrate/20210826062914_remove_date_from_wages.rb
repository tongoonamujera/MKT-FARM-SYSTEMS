class RemoveDateFromWages < ActiveRecord::Migration[6.0]
  def change
    remove_column :wages, :Date, :string
    remove_column :wages, :Season, :string
    remove_column :wages, :Total_Amount, :string
    add_column :wages, :worker_status, :string
    add_column :wages, :employee_name, :string
    add_column :wages, :empoyee_number, :string
    add_column :wages, :daily_rate, :string
  end
end
