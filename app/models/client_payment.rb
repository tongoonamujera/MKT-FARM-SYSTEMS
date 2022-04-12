class ClientPayment < ApplicationRecord
  belongs_to :user

  def self.valid
    where("valid_from <=? AND valid_to >=?", Date.today, Date.today)
  end
end
