class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blogs = Blog.new
  end

  def create
    @blogs = Blog.new(blog_params)
      if @blog.save
        redirect_to '/blogs'
      else
        render 'new'
      end
    end 

  def show
  end

  def edit
  end
end
