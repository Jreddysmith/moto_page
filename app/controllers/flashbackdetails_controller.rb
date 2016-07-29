class FlashbackdetailsController < ApplicationController
	before_action :require_login, only: [:index]
	def index
		@flashback = Flashback.find(params[:id])
		@user = User.find(session[:user_id]) if session[:user_id]
	end
end
