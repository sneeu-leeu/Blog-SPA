class Post < ApplicationRecord
  belongs_to :user

  def update_post_counter(arg)
    user.update('post_counter', arg)
  end
end
