class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def require_admin
    unless session[:is_admin?]
      flash[:danger] = "You need to be an admin to perform this action"
      redirect_to root_path
    end
  end
end
