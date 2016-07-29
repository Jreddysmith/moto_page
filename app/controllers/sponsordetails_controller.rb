class SponsordetailsController < ApplicationController
	before_action :require_login, only: [:index]
	def index
		@sponsor = Sponsor.find(params[:id])
		@user = User.find(session[:user_id]) if session[:user_id]
	end
end
