class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.documents_files = post_params[:documents_files]

    redirect_to @post
  end

private

  def post_params
    params.require(:post).permit(:title, documents_files: [])
  end
end
