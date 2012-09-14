class MessageController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
  end

  def delete
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_path
  end
  
  def create
    @message = Message.new(params[:message])
    if @message.save
      redirect_to messages_path
    else
      render "new"
    end
  end
end
