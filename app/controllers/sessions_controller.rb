class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    # byebug
    if !session[:name].blank?
      redirect_to root_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
