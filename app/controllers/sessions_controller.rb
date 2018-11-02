class SessionsController < ApplicationController
  def as_admin
    session[:is_admin?] = true
    if request.referrer.nil?
      redirect_to root_path
    else
      redirect_to request.referrer 
    end
  end

  def as_user
    session[:is_admin?] = false
    if request.referrer.nil?
      redirect_to root_path
    else
      redirect_to request.referrer 
    end
  end
end