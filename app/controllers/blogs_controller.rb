class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blogs = Blog.new
  end

  def show
    @blogs= Blog.find(params[:id])
  end

  def edit
    @blogs= Blog.edit
  end

  def create
    @blogs = Blog.create(blog_params)
        redirect_to blogs_path(@blogs)
    end

#maybe take this out so that it can be read publicly
  private
    def blog_params
      params.require(:blog).permit(:message)
    end
  end
