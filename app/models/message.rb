class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user

  validates_presence_of :body, :chat_id, :user_id

  after_create_commit { MessageBroadcastJob.perform_later self }
  
  def message_time
    created_at.strftime("%d/%m/%y at %l:%M %p")
  end

end
