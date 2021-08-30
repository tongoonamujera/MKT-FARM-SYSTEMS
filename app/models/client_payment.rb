class ClientPayment < ApplicationRecord
  belongs_to :user

  def self.valid
    where('valid_from <=?', Date.today).where('valid_to >=?', Date.today)
  end
end
