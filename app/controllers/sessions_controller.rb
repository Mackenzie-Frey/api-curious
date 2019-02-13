class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_uid(auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.uid
    session[:token] = user.token
    user.token = auth["credentials"]["token"]
    user.save!
    redirect_to user_path(user), :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
