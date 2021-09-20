class RemoveCompanyNameFromSeedbeds < ActiveRecord::Migration[6.0]
  def change
    remove_column :seedbeds, :Company_Name, :string
    remove_column :seedbeds, :Date, :date
    remove_column :seedbeds, :Season, :string
    remove_column :seedbeds, :Farm_Name, :string
    remove_column :seedbeds, :Section, :string
    remove_column :seedbeds, :Item_Used, :string
    remove_column :seedbeds, :Quantity, :string
    remove_column :seedbeds, :Unit, :string
    remove_column :seedbeds, :Input_Amount, :string
    remove_column :seedbeds, :Labour_Amount, :string
    remove_column :seedbeds, :Pro_Number, :string

    add_column :seedbeds, :company_name, :string
    add_column :seedbeds, :date, :date
    add_column :seedbeds, :season, :string
    add_column :seedbeds, :farm_name, :string
    add_column :seedbeds, :section, :string
    add_column :seedbeds, :item_used, :string
    add_column :seedbeds, :unit, :string
    add_column :seedbeds, :input_amount, :decimal
    add_column :seedbeds, :labour_amount, :integer
    add_column :seedbeds, :pro_number, :decimal
  end
end
