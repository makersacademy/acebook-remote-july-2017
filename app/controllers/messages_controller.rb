class MessagesController < ApplicationController
  before_action do
    @chat = Chat.find(params[:chat_id])
  end

  def index
    @messages = @chat.messages
  end
end
