class RenameVatToVatInPurchases < ActiveRecord::Migration[6.0]
  def change
    rename_column :purchases, :VAT, :vat
  end
end
