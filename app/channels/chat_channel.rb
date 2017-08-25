class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    @chat = Chat.find(data['chat_id'])
    @message = @chat.messages.create(body: data['message'], user_id: data['user_id'])
  end
end
