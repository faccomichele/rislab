class LineItem < ApplicationRecord
  belongs_to :device
  belongs_to :template_volume
  belongs_to :cart
end
