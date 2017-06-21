class Order < ApplicationRecord
  include OrderCustomValidators
  belongs_to :user
  validates :user_id, :start_time, :end_time, presence: true
  validates_with EndTimeGreaterThanStartTimeValidator
  validates_with BookUpToTwoWeeksValidator
  has_many :line_items, dependent: :destroy

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  class Error < StandardError
  end

  def devices_not_in_use_by_other_orders_in_this_timeframe(cart)
    overlapping_orders = Order.where("start_time < ? AND end_time > ?", end_time, start_time)
    unless overlapping_orders.blank?
      cart.line_items.each do |item|
        overlapping_orders.each do |order|
          overlapping_device = LineItem.find_by(device_id: item.device_id, order_id: order.id)
          unless overlapping_device.blank?
            errors.add(:base, 'One or more devices you chose have already been booked for this timeframe')
            raise Error.new
          end
        end
      end
    end
  end

end
