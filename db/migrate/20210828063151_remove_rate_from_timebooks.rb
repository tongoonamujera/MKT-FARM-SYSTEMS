class RemoveRateFromTimebooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :timebooks, :rate, :string
    remove_column :timebooks, :gross, :string
    add_column :timebooks, :rate, :decimal
    add_column :timebooks, :gross, :decimal
  end
end
