class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
  	unless session[:user_id]
  		flash[:errors] = ['Please login or register to continue']
  		redirect_to "/homepages"
  	end
  end
end
