class Device < ApplicationRecord
  belongs_to :device_type
  validates :name, :ip, :mac, :device_type, presence: true
#  validates :devtype, numericality: {greater_than_or_equal_to: 1}
  validates :name, uniqueness: true
#validates :image_url, allow_blank: true, format: {
#with: %r{\.(gif|jpg|png)\Z}i,
#message: 'must be a URL for GIF, JPG or PNG image.'
#}
  has_many :line_items
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  private
  # ensure that there are no line items referencing this device
    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line Items present')
        throw :abort
      end
    end
end
