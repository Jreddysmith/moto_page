class NutritionVotesController < ApplicationController
	before_action :require_login, only: [:create]
	
	def create
		vote = NutritionVote.find_by(user_id: session[:user_id], nutrition_id: params[:id])
		nutrition = Nutrition.find(params[:id])
		@addvote
		if vote
			flash[:errors] = ['You voted for this already']
			redirect_to :back
		else
			NutritionVote.create(user_id: session[:user_id], nutrition_id: params[:id])
			@addvote = nutrition.vote + 1
			nutrition.update(vote: @addvote)
			redirect_to :back
		end
	end

end