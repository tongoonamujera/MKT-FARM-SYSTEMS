class SetSeason < ApplicationRecord
  belongs_to :user

  def activate_s
    self.update_attributes(is_active: true)
  end

  def deactivate_s
    self.update_attributes(is_active: false)
  end
end
