class TrainingsController < ApplicationController
	before_action :require_login, only: [:index]
	def index
		@user = User.find(session[:user_id]) if session[:user_id]
		@trainings = Training.all.order(vote: :desc)
	end

	def create
		training = Training.new(training_params)
		flash[:errors] = training.errors.full_messages unless training.save
		redirect_to :back
	end

	private
  	def training_params
 		params.require(:training).permit(:title, :user_id, :content, :picture)
 	end
end
