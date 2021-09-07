class DeductionTable < ApplicationRecord
  attribute :total_amount, :float, default: -> { DeductionTable.add_employee_total }
  def self.add_employee_total
    where('month_starting <=?', Date.today).where('month_ending >=?', Date.today).pluck(:nssa, :nec, :payee, :cash_requests).flatten.compact.inject(:+)
  end
  def self.created_within_month
    where("DATE_PART('month', created_at) = ?", Date.today.month).where('employee_name =?', 'Taurai Meki').pluck(:nssa, :nec, :payee, :cash_requests).flatten.compact.inject(:+)
  end
end
