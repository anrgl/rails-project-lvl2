class PostLikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    @like = PostLike.new
    @like.post = @post
    @like.user = current_user
    @like.save
    redirect_to root_path
  end

  def destroy
    @like = PostLike.find(params[:id])
    @like.destroy
    redirect_to root_path
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
