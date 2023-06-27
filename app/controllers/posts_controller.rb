class PostsController < ApplicationController

  def index
    #@post = Post.find(1)      #@postに1番目のレコードを代入

    @posts = Post.all          #@postに全てのレコードを代入
  end

  def new
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end
