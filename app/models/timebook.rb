class Timebook < ApplicationRecord
  belongs_to :user

  def self.count_days
    where('date >=?', Date.today).where('day =?', '1').pluck(:day).size
  end

  def self.add_rate
    where('employee_name =?', 'Taurai Meki').where('day =?', '1').pluck(:rate).inject(:+)
  end

  def self.check_record_existance
    where('created_at >=?', Date.today).pluck(:employee_name)
  end
end
