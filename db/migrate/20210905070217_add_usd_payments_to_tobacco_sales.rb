class AddUsdPaymentsToTobaccoSales < ActiveRecord::Migration[6.0]
  def change
    add_column :tobacco_sales, :usd_payments, :decimal
    add_column :tobacco_sales, :zw_payments, :decimal
  end
end
