class CalendarController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize
  def index
    device_type_id_filter = DeviceType.find_by(name: "Server").id
    @devices = Device.order(:name).where(device_type_id: device_type_id_filter)
    @users = User.all
  end
end
