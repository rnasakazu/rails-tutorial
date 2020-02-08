class RoomsController < ApplicationController
  include CustomerAuthenticator
  before_action :registered_confirmation

  def enter
    @current_customer = current_customer
    @room = @current_customer.room
    @messages = @room.messages
  end
end
