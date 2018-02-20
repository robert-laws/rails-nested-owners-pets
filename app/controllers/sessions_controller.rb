class SessionsController < ApplicationController
  def new
  end

  def create
    # session[:username] = params[:username]
    session[:username] = "item"
    redirect_to '/'
  end

  def logout
  end

  def destroy
    session.delete :username
    redirect_to '/login'
  end
end