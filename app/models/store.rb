class Store < ApplicationRecord
  belongs_to :user

  after_commit :update_total_amount, on: :update
  after_commit :update_quantity, on: :update

  def update_quantity
    update_column(:quantity, total_value)
  end

  def update_total_amount
    update_column(:total_amount, total_amount_value)
  end

  def total_value
    c = Store.where("updated_at =?", Store.maximum(:updated_at)).pluck(:types)[0]
    d = Store.where("updated_at =?", Store.maximum(:updated_at)).pluck(:id)[0]
    a = Store.where("id =?", d).pluck(:quantity, :top_up).flatten.compact.inject(:+)

    a 
  end

  def total_amount_value
    c = Store.last.types
    d = Store.last.id
    a = Store.where("types =? AND id =?", c,d).pluck(:unit_price, :top_up).flatten.compact.inject(:*)
    b = Store.where("types =? AND id =?", c,d).pluck(:total_amount).inject(:+)

    a + b
  end
end
