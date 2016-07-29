class TrainingdetailsController < ApplicationController
	before_action :require_login, only: [:index]
	def index
		@training = Training.find(params[:id])
		@user = User.find(session[:user_id]) if session[:user_id]
		@votes = TrainingVote.where(user_id: session[:user_id])
		@votesarray =[]
		@votes.each do |v|
			@votesarray << v.training_id
		end
	end
end
