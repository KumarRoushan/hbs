class PostsController < ApplicationController
  def  post_params
      allow = [:name, :body, :category_id, :author_id, :title]
      params.require(:post).permit(allow)
    end
    
  def index
    @post = Post.all
#    params.require(:post).permit(:name, :body, :category_id, :title, :tuthor_id)
  end
  
  def new
    @post = Post.new
    #params.require(:post).permit(:name, :body, :category_id, :title)
    @category = Category.all
  end
  
  def create
    #params.require(:post).permit(:name, :body, :category_id, :author_id)
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path,  :notice => "Your post has been saved"
    else
      render "index"
    end
  end

  def update
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
  end

  
end
