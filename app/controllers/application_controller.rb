class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new
  redirect_to '/login' unless session.include? :name
  end

  def current_user
    if session[:name]
    session[:name]
  end
end

end
