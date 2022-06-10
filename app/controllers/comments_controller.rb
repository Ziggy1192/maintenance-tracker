class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end


  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save!
      redirect_to task_path(@task)
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end
end
