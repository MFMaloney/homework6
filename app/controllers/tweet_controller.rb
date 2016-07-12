class TweetController < ApplicationController
	
	def index
		@tweets = Tweet.all
	end

	def show
		find_tweet
	end

	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.create
		redirect_to(@tweet)
	end

	def edit
		find_tweet
	end

	def update
		find_tweet
		@tweet.update(tweet_params)
		redirect_to(@tweet)
	end

private
	def find_tweet
		@tweet = Tweet.find(params[:id])
	end

	def tweet_params
		params[:tweet]
	end
end
