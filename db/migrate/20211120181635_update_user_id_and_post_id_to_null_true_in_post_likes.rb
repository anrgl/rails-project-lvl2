class UpdateUserIdAndPostIdToNullTrueInPostLikes < ActiveRecord::Migration[6.1]
  def change
    change_column :post_likes, :user_id, :int, null: true
    change_column :post_likes, :post_id, :int, null: true
  end
end
