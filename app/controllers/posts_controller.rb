class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if params[:back]
      render :new
    else
      if @post.save
        redirect_to posts_path, success: "投稿しました"
          # ContactMailer.contact_mail(@post).deliver
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post), success: "投稿を編集しました！"
    else
      render :edit
    end
  end

  def show
  end

  def guilty
    if params[:post_id].present?
      @post = Post.find(params[:post_id])
      @post.guilty += 1
      @post.save
      redirect_to posts_path, success: "投稿しました"
    else
      render :index
    end
  end

  def not_guilty
    if params[:post_id].present?
      @post = Post.find(params[:post_id])
      @post.not_guilty += 1
      @post.save
      redirect_to posts_path, success: "投稿しました"
    else
      render :index
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, danger: "投稿を削除しました"
  end

  private

  def post_params
    params.require(:post).permit(:title, :kind)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
