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
  end
  
  def create
    @message = Message.new(params[:message])
    if @messgae.save
      redirect_to message_path
    else
      render "new"
    end
  end
end
