class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_likes_counter(arg)
    post.update('likes_counter', arg)
  end
end
