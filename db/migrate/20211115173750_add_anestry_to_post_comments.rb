# frozen_string_literal: true

class AddAnestryToPostComments < ActiveRecord::Migration[6.1]
  def change
    add_column :post_comments, :ancestry, :string
    add_index :post_comments, :ancestry
  end
end
