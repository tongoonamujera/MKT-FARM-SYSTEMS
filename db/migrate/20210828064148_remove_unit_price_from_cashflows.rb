class RemoveUnitPriceFromCashflows < ActiveRecord::Migration[6.0]
  def change
    remove_column :cashflows, :Unit_Price, :string
    remove_column :cashflows, :quantity_per_hectre, :string
    remove_column :cashflows, :Total_Amount, :string
    add_column :cashflows, :Unit_Price, :decimal
    add_column :cashflows, :quantity_per_hectre, :decimal
    add_column :cashflows, :Total_Amount, :decimal
    add_column :cashflows, :total_quantity, :string
    add_column :cashflows, :tian_ze_number, :string
  end
end
