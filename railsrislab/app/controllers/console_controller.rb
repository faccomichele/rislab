class ConsoleController < ApplicationController
  skip_before_action :authorize

  def index
    @device_type_id_filter = DeviceType.find_by(name: "Server").id
    @devices = Device.order(:name).where(device_type_id: @device_type_id_filter)
    @os_types = OsType.order(:name)
  end
end
