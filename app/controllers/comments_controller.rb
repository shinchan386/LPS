class CommentsController < ApplicationController
  
  def edit
    @comment = Comment.find(params[:id])
  end

  def update 
      comment = Comment.find(params[:id])
      comment.update(comment_params)
  end
  
  def create
    Commnet.create(comment: comment_params[:comment],user_id: current_user.id )
  end

  def destroy
    @comment = Comment.find(params[:id])
  end
  
  private
  def comment_params
    params.permit(:comment)
  end
end
