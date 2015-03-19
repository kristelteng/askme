class User < ActiveRecord::Base
  #add attr_accessor :password, :password_confirmation
  has_secure_password

  has_many :comments
  has_many :articles, through: :comments
end
