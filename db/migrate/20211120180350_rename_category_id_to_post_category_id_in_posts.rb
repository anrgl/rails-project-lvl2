# frozen_string_literal: true

class RenameCategoryIdToPostCategoryIdInPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :category_id, :post_category_id
  end
end
