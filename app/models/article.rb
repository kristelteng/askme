class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: {minimum: 5}

  has_many :comments
  has_many :users, through: :comments
  
end
