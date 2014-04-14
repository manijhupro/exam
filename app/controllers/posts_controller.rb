class PostsController < ApplicationController
  def new
  end
  def create
    render text :params[:post].inspect
    @post = Post.new(post_params)
    @psot.save
    redirect_to @post

  end

  private
    def post_params
      params.require(:post).permit(:Question, :A, :B, :C, :D)
    end
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts= Post.all

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:Question, :A, :B, :C, :D))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

end