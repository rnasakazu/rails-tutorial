class Room < ApplicationRecord
  has_one :customer_room, dependent: :destroy
  has_one :customer, through: :customer_room
end
