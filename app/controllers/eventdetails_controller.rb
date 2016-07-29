class EventdetailsController < ApplicationController
  def index
  	@event = Event.find(params[:id])
  	@user = User.find(session[:user_id]) if session[:user_id]
  end
end
