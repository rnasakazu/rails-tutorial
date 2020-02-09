class RoomChannel < ApplicationCable::Channel
  def subscribed
    return stream_for current_user.room.id if current_user.instance_of?(Customer)
    stream_for params[:room_id].to_i
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    current_user.messages.create!(content: data['message'], room: Room.find_by(id: data['room_id']))
  end
end
