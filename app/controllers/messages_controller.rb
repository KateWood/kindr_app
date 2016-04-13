class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def index
    @messages = Message.all
  end

  def create
    Message.create(message_params)
    redirect_to messages_path
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
