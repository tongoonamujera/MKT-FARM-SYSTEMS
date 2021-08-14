class AddCompanNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Company_Name, :string
    add_column :users, :cellphone, :string
    add_column :users, :Address, :string
    add_column :users, :Category, :string
    add_column :users, :Pro_Number, :string
  end
end
