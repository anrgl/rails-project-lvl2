require "test_helper"

class PostCommentsControllerTest < ActionDispatch::IntegrationTest
  test 'opens post page with comments' do
    get post_path(posts(:one))

    assert_response :success
    assert_select 'p', 'Test comment content'
  end

  test 'create comment' do
    post post_comments_path(posts(:one).id), params: { post_comment: { content: 'Test comment' } }

    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select 'p', 'Test comment'
  end
end
