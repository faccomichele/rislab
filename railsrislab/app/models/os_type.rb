class OsType < ApplicationRecord
  has_many :template_volumes
  validates :name, presence: true, uniqueness: true
  before_destroy :ensure_not_referenced_by_any_template_volume

  private
    #ensure that tehre are no devices referencing this device type
    def ensure_not_referenced_by_any_template_volume
      unless template_volumes.empty?
        errors.add(:base, 'Template Volume references exist')
        throw :abort
      end
    end

end
