class SessionsController < ApplicationController

  def create
      if params[:name] == nil || params[:name] == ""
        redirect_to '/login'
      else
        session[:name] = params[:name]
        redirect_to '/'
      end
    end
    
    def destroy
      session[:name] = nil
      redirect_to '/login'
    end

end
