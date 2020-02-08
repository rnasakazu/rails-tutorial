class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :admin_rooms, dependent: :destroy
  has_many :rooms, through: :admin_rooms
  has_many :messages, as: :messageable

  # messageable interface
  def sender_name
    'サポート'
  end
end
