class CommentsController < ApplicationController
  
  def new
     @tweet = Tweet.find(params[:tweet_id])
  end 
  
  def show
    @tweet = Tweet.find(params[:tweet_id])
    @comment = Comment.find(params[:id])
  end  
  
  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment: ccomment_params[:comment])
  end
  
  def create
    Comment.create(comment: comment_params[:comment],tweet_id: comment_params[:tweet_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
  end
  
  private
  def comment_params
    params.permit(:comment,:tweet_id)
  end
  
  def ccomment_params
    params.require(:comment).permit(:comment)
  end
  
end
