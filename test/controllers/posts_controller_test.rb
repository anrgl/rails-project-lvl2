# frozen_string_literal: true

require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'opens all posts page' do
    get root_path

    assert_response :success
    assert_select 'h1', 'Blog posts'
  end

  test 'opens post new page' do
    sign_in users(:one)
    get new_post_path

    assert_response :success
    assert_select 'h1', 'Create new post'
    assert_select 'form', 1
    assert_select 'input[type=text]', 1
    assert_select 'textarea', 1
    assert_select 'select', 1
  end

  test 'creates a new post' do
    sign_in users(:one)
    post posts_path,
         params: { post: { title: 'Test title', body: 'Test body', post_category_id: post_categories(:one).id } }

    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select 'h4', 'Test title'
  end

  test 'opens post show page' do
    get post_path(posts(:one))

    assert_response :success
    assert_select 'h1', 'First posts title'
  end
end
