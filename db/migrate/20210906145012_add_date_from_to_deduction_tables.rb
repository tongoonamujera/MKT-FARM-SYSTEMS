class AddDateFromToDeductionTables < ActiveRecord::Migration[6.0]
  def change
    add_column :deduction_tables, :month_starting, :date
    add_column :deduction_tables, :month_ending, :date
  end
end
