class RenameEmpoyeeNumberToEmployeeNumber < ActiveRecord::Migration[6.0]
  def change
    rename_column :wages, :empoyee_number, :employee_number
  end
end
