class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ destroy]

  def create
    @comment = current_user.comments.build(comment_params)
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to blog_path(@comment.blog_id), notice: "Comment was successfully removed." }
    end
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
