class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save && @comment.content.present? # コメントが保存され、かつ内容が空でない場合
      redirect_to prototype_path(@comment.prototype)
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end
