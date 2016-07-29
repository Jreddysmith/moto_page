class FlashbacksController < ApplicationController
	before_action :require_login, only: [:index]
	def index
		@user = User.find(session[:user_id]) if session[:user_id]
		@flashbacks = Flashback.all
	end

	def create
		flashback = Flashback.new(flashback_params)
		flash[:errors] = flashback.errors.full_messages unless flashback.save
		redirect_to :back
	end

	private
  	def flashback_params
 		params.require(:flashback).permit(:title, :user_id, :content, :picture)
 	end
end
