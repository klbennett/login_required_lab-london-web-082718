class SessionsController < ApplicationController

def create
  if params[:name] && !params[:name].empty?
    session[:name] = params[:name]
    redirect_to secret_path
  else
    redirect_to new_session_path
  end
end

def show
   @current_user = current_user
 end

def destroy
 session[:name] = nil
redirect_to new_session_path
end

private

def require_login
  return head(:forbidden) unless session.include? :user_id
end

end
