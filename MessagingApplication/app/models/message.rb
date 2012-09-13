class Message < ActiveRecord::Base
  validates :sender, :receiver, :subject, :content, presence: true
  
  attr_accessible :sender, :receiver, :subject, :content
end
