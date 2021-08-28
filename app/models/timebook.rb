class Timebook < ApplicationRecord
  belongs_to :user

  def cal_value
    Timebook.find_each do |user|
      value =  user.rate.to_f * user.day.to_f
    end
  end
end
