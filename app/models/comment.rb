class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :title, presence: true, length: { minimum: 10 }
  validates :body, presence: true, length: { minimum: 20 }
end
