class TemplateVolume < ApplicationRecord
  belongs_to :os_type
  validates :name, :iscsiname, :os_type, presence: true
  validates :name, :iscsiname, uniqueness: true
  has_many :line_items
  has_many :orders, through: :line_items
  has_many :actual_volumes, dependent: :destroy
  before_destroy :ensure_not_referenced_by_any_line_item

  private
    # ensure that there are no line items referencing this template_volume
    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line Items present')
        throw :abort
      end
    end
end
