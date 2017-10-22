class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to root_path
    else
      flash.now[:notice] = "Blog Creation Failed!"
      render :new
    end
  end

  def update

  end

  def show
    @blog = Blog.find(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
