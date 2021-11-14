# frozen_string_literal: true

class PostCategory < ApplicationRecord
  has_many :posts, foreign_key: 'category_id'
end
