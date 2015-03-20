class Question < ActiveRecord::Base
  validates :title, presence: true,
                    length: {minimum: 5}

  has_many :answers
  has_many :users, through: :answers
  
end
