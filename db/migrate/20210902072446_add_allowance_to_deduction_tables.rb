class AddAllowanceToDeductionTables < ActiveRecord::Migration[6.0]
  def change
    add_column :deduction_tables, :allowance, :decimal
    add_column :deduction_tables, :payee, :decimal
    add_column :deduction_tables, :nssa, :decimal
    add_column :deduction_tables, :nec, :decimal
    add_column :deduction_tables, :cash_requests, :decimal
  end
end
