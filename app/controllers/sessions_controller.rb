class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_uid(auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id     redirect_to root_url, :notice => "Signed in!"
  end

  def destroyra
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
