# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :category, class_name: 'PostCategory'
  belongs_to :creator, class_name: 'User'
end