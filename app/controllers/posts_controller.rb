class PostsController < ApplicationController
  
  def index
    @posts = Post.all
    @post = Post.new
  end
  def show
  end
  
  def create
    @post = Post.new(title: params[:post][:title],
                     content: params[:post][:content])
    
    
    if @post.save
       
       redirect_to'/'
       
    else
       render 'new'
    end
  end

  def edit
  end
end
