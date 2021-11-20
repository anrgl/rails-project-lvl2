require "test_helper"

class PostLikesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'like posts' do
    sign_in users(:one)
    get root_path

    assert_response :success
  end
end
