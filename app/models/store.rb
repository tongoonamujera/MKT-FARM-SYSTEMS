class Store < ApplicationRecord
  belongs_to :user

  after_commit :update_total_amount, on: :update

  def update_total_amount
    update_column(:quantity, total_value)
  end

  def total_value
    c = Store.last.types
    d = Store.last.id
    a = Store.where("types =? AND id =?", c,d).pluck(:quantity, :top_up).flatten.compact.inject(:+)

    a 
  end
end
