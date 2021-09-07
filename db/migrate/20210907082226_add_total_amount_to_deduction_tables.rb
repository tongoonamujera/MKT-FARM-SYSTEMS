class AddTotalAmountToDeductionTables < ActiveRecord::Migration[6.0]
  def change
    add_column :deduction_tables, :total_amount, :float
  end
end
