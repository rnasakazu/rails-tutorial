class RoomChannel < ApplicationCable::Channel
  def subscribed
    if current_user.instance_of?(Customer)
      stream_for current_user.room.id
    else
      current_user.rooms.each do |room|
        stream_for room.id
      end
    end
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    current_user.messages.create!(content: data['message'], room: Room.find_by(id: data['room_id']))
  end
end
