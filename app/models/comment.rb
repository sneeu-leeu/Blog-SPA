class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :posts

  def update_comments_counter(arg)
    post.update('comments_counter', arg)
  end
end
