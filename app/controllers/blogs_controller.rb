class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blogs = Blog.new
  end

  def show
    @blogs = Blog.find(params[:id])
  end

  def edit
    @blogs = Blog.find(params[:id])
  end

  def update
    @blog = Blog.update(blog_params)
    redirect_to blog_path(@blog)
  end

  def create
    @blogs = Blog.create(blog_params)
        redirect_to blogs_path(@blogs)
    end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end

  private
    def blog_params
      params.require(:blog).permit(:framework, :message)
    end
#this is essential for the create to work but the delete and edit routes then are mad

  end
