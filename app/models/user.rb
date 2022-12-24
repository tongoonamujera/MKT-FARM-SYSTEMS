class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :farm_names
  has_many :timebooks
  has_many :stores
  def self.admin
    where("is_admin =? OR email =?", true, "tongoonamujera@gmail.com")
  end

  def self.super_admin
    where("email =?",  "tongoonamujera@gmail.com")
  end

  def self.farm_owner
    where('is_farm_owner =?', true)
  end

  def self.manager
    where('is_manager =?', true)
  end

  def self.verified
    where('status =?', true)
  end

  def self.advertiser
    where('is_advertiser =?', true)
  end

  def self.contractor
    where('is_contractor =?', true)
  end
end
