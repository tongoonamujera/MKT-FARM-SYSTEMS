class Timebook < ApplicationRecord
  belongs_to :user

  def self.count_days(employee)
    where("DATE_PART('month', created_at) = ? AND DATE_PART('year', created_at) =?", Date.today.month, Date.today.year).where('employee_name =?', employee).pluck(:day).size
  end

  def self.daily_labour_cost
    where('date >=?', Date.today).where('date <=?', Date.today).where('day =?', '1').pluck(:rate).inject(:+)
  end

  def self.add_rate
    where('employee_name =?', 'Taurai Meki').where('day =?', '1').pluck(:rate).inject(:+)
  end

  def self.monthly_total_rate(employee)
    where("DATE_PART('month', created_at) = ? AND DATE_PART('year', created_at) =?", Date.today.month, Date.today.year).where('employee_name =?', employee).pluck(:rate).flatten.compact.inject(:+)
  end

  def self.check_record_existance
    where('created_at >=?', Date.today).pluck(:employee_name)
  end

  def self.created_within
    where("DATE_PART('month', created_at) = ?", Date.today.month).where('employee_name =?', 'Taurai Meki').pluck(:rate).inject(:+)
  end
end
