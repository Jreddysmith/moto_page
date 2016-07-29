class TrainingVotesController < ApplicationController
	before_action :require_login, only: [:create]
	
	def create
		vote = TrainingVote.find_by(user_id: session[:user_id], training_id: params[:id])
		training = Training.find(params[:id])
		@addvote
		if vote
			flash[:errors] = ['You voted for this already']
			redirect_to :back
		else
			TrainingVote.create(user_id: session[:user_id], training_id: params[:id])
			@addvote = training.vote + 1
			training.update(vote: @addvote)
			redirect_to :back
		end
	end

end