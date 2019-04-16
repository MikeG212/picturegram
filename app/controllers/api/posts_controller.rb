class Api::PostsController < ApplicationController
  before_action :require_logged_in
  
  def index
    @posts = Post.all.limit(10)
    render :index
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.image_url = url_for(@post.photo)
    if @post.save
      render :show
    else
      render ({ json: @post.errors.full_messages, status: 422 })
    end
  end

    def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      render :show
    else
      render json: @post.errors.full_messages, status: 422
    end
  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
      render :show
    else
      render json: @post.errors.full_messages, status: 422
    end
  end

  def like
    debugger
    @post = Post.find(params[:id])
    like = @post.likes.new(user_id: current_user.id)
    if like.save
      render :show
    else
      render({ json: ["You already liked this"], status: 422 })
    end
  end

  def unlike
    debugger
    @post = Post.find(params[:id])
    like = Like.find_by(user_id: current_user.id, post_id: @post.id)
    if like.destroy
      render :show
    else
      render ({ json: ["You already don't like this"], status: 422 })
    end
  end

  def post_params
    params.require(:post).permit(:caption, :photo)
  end
end
