class AddOther1NameToDeductionTables < ActiveRecord::Migration[6.0]
  def change
    add_column :deduction_tables, :other1_name, :string
    add_column :deduction_tables, :other1_amount, :decimal
    add_column :deduction_tables, :other2_name, :string
    add_column :deduction_tables, :other2_amount, :decimal
    add_column :deduction_tables, :other3_name, :string
    add_column :deduction_tables, :other3_amount, :decimal
    add_column :deduction_tables, :other4_name, :string
    add_column :deduction_tables, :other4_amount, :decimal
    add_column :deduction_tables, :other5_name, :string
    add_column :deduction_tables, :other5_amount, :decimal
    add_column :deduction_tables, :other6_name, :string
    add_column :deduction_tables, :other6_amount, :decimal
    add_column :deduction_tables, :other7_name, :string
    add_column :deduction_tables, :other7_amount, :decimal
    add_column :deduction_tables, :other8_name, :string
    add_column :deduction_tables, :other8_amount, :decimal
    add_column :deduction_tables, :other9_name, :string
    add_column :deduction_tables, :other9_amount, :decimal
    add_column :deduction_tables, :other10_name, :string
    add_column :deduction_tables, :other10_amount, :decimal
  end
end
