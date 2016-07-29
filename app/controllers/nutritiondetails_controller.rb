class NutritiondetailsController < ApplicationController
  def index
  	@nutrition = Nutrition.find(params[:id])
  	@user = User.find(session[:user_id]) if session[:user_id]
  	@votes = NutritionVote.where(user_id: session[:user_id])
		@votesarray =[]
		@votes.each do |v|
			@votesarray << v.nutrition_id
		end
  end
end
