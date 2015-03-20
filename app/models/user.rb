class User < ActiveRecord::Base
  #add attr_accessor :password, :password_confirmation
  has_secure_password

  has_many :ansers
  has_many :questions, through: :answers
end
