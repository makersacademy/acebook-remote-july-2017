class MessagesController < ApplicationController
  before_action do
    p Chat.find(params[:chat_id])
    @chat = Chat.find(params[:chat_id])
  end

  def index
    @messages = @chat.messages
  end

  def create
    p params
    @message = @chat.messages.new(message_params)
    if @message.save
      redirect_to chat_messages_path(@chat)
    end
  end

  private
  def message_params
    params.require(:message).permit(:body, :user_id)
  end

end
