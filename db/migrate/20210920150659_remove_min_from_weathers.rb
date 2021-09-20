class RemoveMinFromWeathers < ActiveRecord::Migration[6.0]
  def change
    remove_column :weathers, :Min, :string
    remove_column :weathers, :Max, :string
    remove_column :weathers, :Date, :date
    remove_column :weathers, :Area, :string

    add_column :weathers, :min, :decimal
    add_column :weathers, :max, :decimal
    add_column :weathers, :date, :date
    add_column :weathers, :area, :string
  end
end
