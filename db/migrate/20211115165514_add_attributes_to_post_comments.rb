# frozen_string_literal: true

class AddAttributesToPostComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :post_comments, :post, null: false, foreign_key: true
  end
end
