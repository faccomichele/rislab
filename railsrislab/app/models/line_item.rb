class LineItem < ApplicationRecord
  belongs_to :device
  belongs_to :template_volume
  belongs_to :cart

  validates :device_id, uniqueness: {scope: :cart_id, message: 'only one instance is allowed per Cart'}
end
