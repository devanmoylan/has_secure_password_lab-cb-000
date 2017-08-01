class User < ActiveRecord::Base
  validates_presence_of :password, :password_confirmation

end
