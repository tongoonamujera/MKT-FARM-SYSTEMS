class Wage < ApplicationRecord
  belongs_to :user
  after_commit :update_net, on: :create


  def update_net
    update_column(:net, total_value)
  end

  def total_value
    c = Wage.last.id
    d = Wage.last.employee_name
    a = Wage.where("id =?", c).pluck(:gross).flatten.compact.inject(:+)
    b = DeductionTable.where("employee_name =?", d).pluck(:total_amount).compact.first

    if b.nil?
      b = 0
    end

    if a.nil?
      a = 0
    end

    a - b
  end
end
