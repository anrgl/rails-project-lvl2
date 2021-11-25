# frozen_string_literal: true

require 'test_helper'

class PostLikesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'like post' do
    sign_in users(:one)
    p = posts(:one)
    post post_likes_path(p)
    assert_response :redirect
    assert p.likes.count == 1
  end

  test 'unlike post' do
    sign_in users(:one)
    p = posts(:one)
    like = post_likes(:one)
    delete post_like_path(p, like)
    assert_response :redirect
    assert p.likes.count.zero?
  end
end
