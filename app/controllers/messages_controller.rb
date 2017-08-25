class MessagesController < ApplicationController
  before_action do
    @chat = Chat.find(params[:chat_id])
    security_check
  end

  def index
    @messages = @chat.messages
  end

  def create
    @message = @chat.messages.new(message_params)
    if @message.save
      redirect_to chat_messages_path(@chat)
    end
  end

  private
  def message_params
    params.require(:message).permit(:body, :user_id)
  end

  def security_check
    unless current_user.id == @chat.sender_id || current_user.id == @chat.recipient_id
      redirect_to posts_path
    end
  end

end
