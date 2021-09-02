class RemoveGrossFromDeductionTables < ActiveRecord::Migration[6.0]
  def change
    remove_column :deduction_tables, :Gross, :string
    remove_column :deduction_tables, :Net, :string
    add_column :deduction_tables, :employee_name, :string
    add_column :deduction_tables, :employee_number, :string
  end
end
