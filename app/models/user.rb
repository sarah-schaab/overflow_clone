class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: { minimum: 6 }

  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes

  has_secure_password
end
