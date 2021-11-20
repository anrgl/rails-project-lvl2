require "test_helper"

class PostLikesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'likes' do
    sign_in users(:one)
    p = posts(:one)
    post post_likes_path(p)
    assert p.likes.count == 1
  end
end
