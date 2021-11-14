# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.belongs_to :category, null: false, foreign_key: { to_table: :post_categories }
      t.belongs_to :creator, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
