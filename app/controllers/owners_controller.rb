class OwnersController < ApplicationController
  def index
    @owners = Owner.all
    @user = session[:username]
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def add
    pet_app_welcome << params['pet_message']
    redirect_to greeting_path
  end

  def greeting

  end

  def empty_welcome
    session.delete :welcome
    render :greeting
  end
end
