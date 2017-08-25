class ChatsController < ApplicationController
  before_action :authenticate_user!
  def index
    @chats = Chat.all
    @users = User.all
  end

  def create
    @sender = current_user
    @recipient = User.find(chat_params[:user_id])
    if Chat.between(@sender.id, @recipient.id).present?
      @chat = Chat.between(@sender.id, @recipient.id).first
    else
      @chat = Chat.create({sender_id: @sender.id, recipient_id: @recipient.id})
    end
    redirect_to chat_messages_path(@chat)
  end

  private
  def chat_params
    params.require(:chat).permit(:user_id)
  end
end
