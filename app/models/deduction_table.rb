class DeductionTable < ApplicationRecord
  def self.add_employee_total
    where('employee_name =?', 'Taurai Meki').pluck(:nssa, :nec, :payee, :cash_requests, :other1_amount).flatten.compact.inject(:+)
  end
end
