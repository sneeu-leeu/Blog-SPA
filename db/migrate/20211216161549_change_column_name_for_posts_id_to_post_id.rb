class ChangeColumnNameForPostsIdToPostId < ActiveRecord::Migration[6.1]
  def self.up
    rename_column :comments, :posts_id, :post
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end

