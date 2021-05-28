class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
  end

  def show
    # raise = throw an error
    # inspect = shows a string representation of that item
    # "hey".inspect
    # raise params.inspect
    @blog_post = BlogPost.find(params[:id])
    @comment = @blog_post.comments.new
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :body)
  end

end
