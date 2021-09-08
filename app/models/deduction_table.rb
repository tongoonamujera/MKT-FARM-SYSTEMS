class DeductionTable < ApplicationRecord
  attribute :total_amount, :float, default: -> { DeductionTable.add_employee_total }
  def self.add_employee_total
    where('month_starting <=?', Date.today).where('month_ending >=?', Date.today).pluck(:nssa, :nec, :payee, :cash_requests).flatten.compact.inject(:+)
  end
  def self.created_within_month(employee)
    where("DATE_PART('month', created_at) = ? AND DATE_PART('year', created_at) =?", Date.today.month, Date.today.year).where('employee_name =?', employee).pluck(:nssa, :nec, :payee, :cash_requests, :other1_amount, :other2_amount, :other3_amount, :other4_amount, :other5_amount, :other6_amount, :other7_amount, :other8_amount, :other9_amount, :other10_amount).flatten.compact.inject(:+)
  end
end
