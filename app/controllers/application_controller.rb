class ApplicationController < ActionController::Base

	
  protect_from_forgery with: :null_session


  helper_method :current_user, :is_admin?


 # before_action :restrict_access




  private 

      def restrcit_access

      	authenticate_or_request_with_http_token do |api_key, options|
    	end 
  end 
    




  def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end




  helper_method :current_user

  def authenticate_user!
      redirect_to '/login' unless current_user
  end
    


end
