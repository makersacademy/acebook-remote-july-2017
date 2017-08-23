class ChatsController < ApplicationController
  before_action :authenticate_user!
  def new
  end

  def create
    @sender = current_user
    @recipient = User.find_by(email: chat_params[:email])
    if Chat.between(@sender.id, @recipient.id).present?
      @chat = Chat.between(@sender.id, @recipient.id).first
    else
      @chat = Chat.create({sender_id: @sender.id, recipient_id: @recipient.id})
    end
    redirect_to chat_messages_path(@chat)
  end

  private
  def chat_params
    params.require(:chat).permit(:email)
  end
end
