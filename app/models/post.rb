# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :category, class_name: 'PostCategory'
  belongs_to :creator, class_name: 'User'
  has_many :comments, class_name: 'PostComment', dependent: :destroy
  has_many :post_likes, dependent: :destroy
  has_many :users_liked, through: :post_likes, source: :user
end
