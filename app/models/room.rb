class Room < ApplicationRecord
  has_one :customer_room, dependent: :destroy
  has_one :customer, through: :customer_room
  has_many :admin_rooms, dependent: :destroy
  has_many :admins, through: :admin_rooms
  has_many :messages
end
