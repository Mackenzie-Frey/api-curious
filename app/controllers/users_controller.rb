class UsersController < ApplicationController

  def show
    @user_facade = UserFacade.new(current_user)
  end

end
