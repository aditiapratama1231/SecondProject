class ApplicationController < ActionController::Base

	 include PublicActivity::StoreController  

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 rescue_from CanCan::AccessDenied do |exception|  
   flash[:error] = "Access denied."  
   redirect_to root_url  
  end

  protect_from_forgery with: :exception
end
