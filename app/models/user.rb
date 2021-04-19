class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :username, presence: true, length: { minimum: 8 }
  validates :password, presence: true, length: { minimum: 8 }
  validates :email, presence: true, length: {minimum: 10}
end
