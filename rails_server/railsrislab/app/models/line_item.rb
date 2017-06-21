class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :device, optional: true
  belongs_to :template_volume, optional: true
  belongs_to :cart

  validates :device_id, uniqueness: {scope: :cart_id, message: 'only one instance is allowed per Cart'}, unless: "cart_id.nil?"
end
