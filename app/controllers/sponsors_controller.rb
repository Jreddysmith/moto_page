class SponsorsController < ApplicationController
	before_action :require_login, only: [:index]
	def index
		@user = User.find(session[:user_id]) if session[:user_id]
		@sponsors = Sponsor.all
	end

	def create
		sponsor = Sponsor.new(sponsor_params)
		flash[:errors] = sponsor.errors.full_messages unless sponsor.save
		redirect_to :back
	end

	private
  	def sponsor_params
 		params.require(:sponsor).permit(:title, :name, :user_id, :content, :picture)
 	end
end
