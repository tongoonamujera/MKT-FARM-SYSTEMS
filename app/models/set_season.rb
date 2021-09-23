class SetSeason < ApplicationRecord
  belongs_to :user

  scope :active_season, ->{where("is_active =?", true)}
  scope :inactive_season, ->{where("is_active =?", false)}

  def activate_s
    self.update_attributes(is_active: true)
  end

  def deactivate_s
    self.update_attributes(is_active: false)
  end
end
