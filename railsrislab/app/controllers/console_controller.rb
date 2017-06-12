class ConsoleController < ApplicationController
  def index
    @devices = Device.order(:name)
  end
end
