class TweetsController < ApplicationController
  
  before_action :move_to_index ,except: :index
  
  def index
    @tweets = Tweet.all
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def new
  end

  def update 
      tweet = Tweet.find(params[:id])
      tweet.update(tweet_params)
  end
  
  def show
    @tweet = Tweet.find(params[:id])
  end
  
  
  def create
    Tweet.create(title: tweet_params[:title],comment: tweet_params[:comment],user_id: current_user.id )
  end

  def destroy
    @tweet = Tweet.find(params[:id])
  end
  
  private
  def tweet_params
    params.permit(:title,:comment)
  end
  
  def move_to_index
    redirect_to action:  :index  unless user_signed_in?
  end  
  
end
