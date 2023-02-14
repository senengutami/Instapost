class User < ApplicationRecord
  has_secure_password

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_one_attached :photo

  acts_as_voter
  
  validates :email, presence: true, uniqueness: true 
end
