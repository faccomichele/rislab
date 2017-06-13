class DeviceType < ApplicationRecord
  has_many :devices
  validates :name, presence: true, uniqueness: true
  before_destroy :ensure_not_referenced_by_any_device

  private
    #ensure that tehre are no devices referencing this device type
    def ensure_not_referenced_by_any_device
      unless devices.empty?
        errors.add(:base, 'Device references exist')
        throw :abort
      end
    end

end
