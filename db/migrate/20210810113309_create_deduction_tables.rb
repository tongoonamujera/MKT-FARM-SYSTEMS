class CreateDeductionTables < ActiveRecord::Migration[6.0]
  def change
    create_table :deduction_tables do |t|
      t.string :Season
      t.string :Month
      t.string :Gross
      t.string :Net
      t.string :Farm_Name

      t.timestamps
    end
  end
end
