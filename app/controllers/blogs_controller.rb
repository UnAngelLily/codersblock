class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update_attributes(blog_params)
    redirect_to blog_path(@blog)
  end

  def create
    @blog = Blog.create(blog_params)
        redirect_to blogs_path
    end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end

  private
    def blog_params
      params.require(:blog).permit(:name, :framework, :message)
    end
#this is essential for the create to work but the delete and edit routes then are mad

  end
