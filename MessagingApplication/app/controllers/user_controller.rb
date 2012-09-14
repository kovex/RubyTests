class UserController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to messages_path, notice: "Benutzer erfolgreich angelegt"
    else
      render "new"
    end
  end
end
