class RoomsController < ApplicationController
  before_action :registered_confirmation

  def enter
    @room = current_customer.room
    @messages = @room.messages
  end
end
