class RoomsController < ApplicationController
  before_action :authenticate_admin!, only: %i[index show]
  before_action :registered_confirmation, only: :widget

  def index
    @rooms = current_admin.rooms
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end

  def widget
    @room = current_customer.room
    @messages = @room.messages
  end
end
