class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_comments_counter(arg)
    post.update('comments_counter', arg)
  end
end
