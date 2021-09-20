class RemoveSeasonFromDeductionTables < ActiveRecord::Migration[6.0]
  def change
    remove_column :deduction_tables, :Season, :string
    remove_column :deduction_tables, :Farm_Name, :string
    remove_column :deduction_tables, :Month, :string

    add_column :deduction_tables, :season, :string
    add_column :deduction_tables, :farm_name, :string
    add_column :deduction_tables, :company_name, :string
    add_column :deduction_tables, :month, :string
  end
end
