class InputStoresUsage < ApplicationRecord
  belongs_to :user

  def delete_record
    self.update_attributes(deleted: true)
  end

  def restore_record
    self.update_attributes(deleted: false)
  end
end
