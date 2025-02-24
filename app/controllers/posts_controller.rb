class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      
      render :edit
    end
    # @post = Post.find(params[:id])
    # @post.update(post_params)
    # redirect_to post_path(@post)
  end

   def edit
    @post = Post.find(params[:id])

    # render :edit
   end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
