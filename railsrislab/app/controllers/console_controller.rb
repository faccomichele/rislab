class ConsoleController < ApplicationController
  skip_before_action :authorize
  
  def index
    @devices = Device.order(:name)
  end
end
