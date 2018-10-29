class SessionsController < ApplicationController
  def as_admin
    session[:is_admin?] = true
    redirect_to request.referrer
  end

  def as_user
    session[:is_admin?] = false
    redirect_to request.referrer
  end
end