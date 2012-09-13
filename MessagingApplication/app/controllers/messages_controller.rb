class MessagesController < ApplicationController
  
  def index
    @messages = ["hallo du vor mir",
                 "Du parks wie ein Arsch!"]    
  end

end
