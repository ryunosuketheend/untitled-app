class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post= Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to 'posts/index'
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to 'posts/index'
    else
      render :show
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  private

  def post_params
    params.require(:post).permit(:name, :detail, :price, :date, :image)
  end

end
