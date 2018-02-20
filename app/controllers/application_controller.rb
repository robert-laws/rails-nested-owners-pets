class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  helper_method :pet_app_welcome
 
  def pet_app_welcome
    session[:welcome] ||= []
  end
end
