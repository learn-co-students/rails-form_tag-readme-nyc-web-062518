class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

end
