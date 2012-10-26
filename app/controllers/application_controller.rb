class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_access

  private
  
  def check_access
    authenticate_or_request_with_http_basic do |user_name, password|
    	# Change these to username and password required
  	  user_name == "redis_client" && password == "redis_client"
  	end
	end

end
