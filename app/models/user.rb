class User < ActiveRecord::Base
  #add attr_accessor :password, :password_confirmation
  has_secure_password
end
