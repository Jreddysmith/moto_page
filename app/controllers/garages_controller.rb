class GaragesController < ApplicationController
	before_action :require_login, only: [:index]
	def index
		@user = User.find(session[:user_id]) if session[:user_id]
		@garages = Garage.all
	end

	def create
		garage = Garage.new(garage_params)
		flash[:errors] = garage.errors.full_messages unless garage.save
		redirect_to :back
	end

	private
  	def garage_params
 		params.require(:garage).permit(:title, :user_id, :content, :picture)
 	end
end
