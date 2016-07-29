class HomepagesController < ApplicationController
  def index
  	@user = User.find(session[:user_id]) if session[:user_id]
  	@training = Training.order(vote: :desc).first
  	@nutrition = Nutrition.order(vote: :desc).first
  end
end
