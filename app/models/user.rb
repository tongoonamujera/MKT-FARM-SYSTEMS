class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.admin
    where('is_admin =?', true)
  end

  def self.farm_owner
    where('is_farm_owner =?', true)
  end

  def self.manager
    where('is_manager =?', true)
  end
end
