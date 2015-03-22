class Answer < ActiveRecord::Base
  validates :body, presence: true, length: {minimum: 3}
  
  belongs_to :question
  belongs_to :user
end
