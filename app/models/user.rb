class User < ApplicationRecord
  has_many :posts
  has_many :likes
  has_many :comments

  def return_post(limit = 3)
    posts.order(created_at: :desc).limit(limit)
  end
end
