class CommentsController < ApplicationController
  # before_action :load_blog_posts

  def create
    @blog_post = BlogPost.find(params[:blog_post_id])
    @comment = @blog_post.comments.new(comment_params)

    if @comment.save
      # flash[:success] = "You added a comment!"
      redirect_to blog_post_url(@blog_post)
    else
      # flash[:error] = "You have issues"
      render "blog_posts/show"
    end
  end


  private

  # def load_blog_posts
  #   @blog_post = BlogPost.find(params[:blog_post_id])
  # end

  def comment_params
    params.require(:comment).permit(:user, :body)
  end

end