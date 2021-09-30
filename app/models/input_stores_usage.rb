class InputStoresUsage < ApplicationRecord
  belongs_to :user

  after_commit :update_total_amount, on: :create

  def delete_record
    self.update_attributes(deleted: true)
  end

  def restore_record
    self.update_attributes(deleted: false)
  end

  def update_total_amount
    update_column(:total_amount, total_value)
  end

  def total_value
    c = InputStoresUsage.last.types
    x = InputStoresUsage.last.input_name
    d = InputStoresUsage.last.id
    a = Store.where("types =? AND input_name =?", c, x).pluck(:unit_price).compact.inject(:+)
    b = InputStoresUsage.where("id =?", d).pluck(:quantity_used).inject(:+)

    if b.nil?
      b = 0
    end

    if a.nil?
      a = 0
    end

    a * b
  end
end
