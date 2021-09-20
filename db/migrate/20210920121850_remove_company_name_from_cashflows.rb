class RemoveCompanyNameFromCashflows < ActiveRecord::Migration[6.0]
  def change
    remove_column :cashflows, :Company_Name, :string
    remove_column :cashflows, :Date, :date
    remove_column :cashflows, :Season, :string
    remove_column :cashflows, :Month, :string
    remove_column :cashflows, :Grower_Name, :string
    remove_column :cashflows, :Hectrage, :string
    remove_column :cashflows, :Operation, :string
    remove_column :cashflows, :Unity, :string
    remove_column :cashflows, :Input_Name, :string
    remove_column :cashflows, :Pro_Number, :string
    remove_column :cashflows, :Unit_Price, :decimal
    remove_column :cashflows, :Total_Amount, :string
    remove_column :cashflows, :total_quantity, :string

    add_column :cashflows, :company_name, :string
    add_column :cashflows, :date, :date
    add_column :cashflows, :season, :string
    add_column :cashflows, :month, :string
    add_column :cashflows, :grower_name, :string
    add_column :cashflows, :hectrage, :string
    add_column :cashflows, :operation, :string
    add_column :cashflows, :unity, :string
    add_column :cashflows, :input_name, :string
    add_column :cashflows, :pro_number, :string
    add_column :cashflows, :unit_price, :decimal
    add_column :cashflows, :total_amount, :decimal
    add_column :cashflows, :total_quantity, :decimal
  end
end
