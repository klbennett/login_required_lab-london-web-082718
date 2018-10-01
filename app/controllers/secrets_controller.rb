class SecretsController < ApplicationController

def show
   unless session[:name]
     redirect_to "/login"
   end
 end


private

def require_login
  return head(:forbidden) unless session.include? :user_id
end

end
