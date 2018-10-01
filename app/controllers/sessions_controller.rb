class SessionsController < ApplicationController

  def create
     if !params[:name].nil? && !params[:name].empty?
         session[:name] = params[:name]
         redirect_to '/'
     else
       redirect_to '/login'
     end
   end

    def destroy
      session[:name] = nil
      redirect_to '/login'
    end

end
