class NutritionsController < ApplicationController
	before_action :require_login, only: [:index]
	def index
		@user = User.find(session[:user_id]) if session[:user_id]
		@nutritions = Nutrition.all.order(vote: :desc)
	end

	def create
		nutrition = Nutrition.new(nutrition_params)
		flash[:errors] = nutrition.errors.full_messages unless nutrition.save
		redirect_to :back
	end

	private
  	def nutrition_params
 		params.require(:nutrition).permit(:title, :user_id, :content, :picture)
 	end
end
