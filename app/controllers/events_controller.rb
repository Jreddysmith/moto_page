class EventsController < ApplicationController
	before_action :require_login, only: [:index]
	def index
		@user = User.find(session[:user_id]) if session[:user_id]
		@events = Event.where('date > ?', Time.now.strftime("%Y-%m-%d"))
	end
	def create
		event = Event.new(event_params)
		flash[:errors] = event.errors.full_messages unless event.save
		redirect_to :back
	end

	private
  	def event_params
 		params.require(:event).permit(:name, :user_id, :content, :date, :city, :state, :picture)
 	end
end
