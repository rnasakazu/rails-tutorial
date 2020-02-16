class Message < ApplicationRecord
  after_create_commit { MessageBroadcastJob.perform_later self }

  belongs_to :messageable, polymorphic: true
  belongs_to :room
end
