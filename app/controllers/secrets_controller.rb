class SecretsController < ApplicationController
before_action :require_login

def show
if current_user
  redirect_to secrets_path
else
  redirect_to login_path
end


private

def require_login
  return head(:forbidden) unless session.include? :user_id
end

end
