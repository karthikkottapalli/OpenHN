class CommentsController < ApplicationController
  def create
    @frontpage = Frontpage.find(params[:frontpage_id])
    @comment = @frontpage.comments.new(params.require(:comment).permit(:body))
    @comment.user_id = current_user.id
    @comment.save

    redirect_to frontpage_path(@frontpage)
  end
end
