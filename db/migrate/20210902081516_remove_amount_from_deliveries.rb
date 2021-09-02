class RemoveAmountFromDeliveries < ActiveRecord::Migration[6.0]
  def change
    remove_column :deliveries, :Amount, :string
    add_column :deliveries, :amount, :string
  end
end
