class AdminRoom < ApplicationRecord
  belongs_to :admin
  belongs_to :room
end
