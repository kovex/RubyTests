class Message < ActiveRecord::Base
  validates :receiver, :sender, :subject, :content, presence:true
  attr_accessible :content, :receiver, :sender, :subject
end
