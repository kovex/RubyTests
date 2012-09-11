class User < ActiveRecord::Base
  attr_accessible :car_plate, :email, :name, :password
end
