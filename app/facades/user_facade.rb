class UserFacade

  def initialize(user)
    @user = user
  end

  def repos
    GithubService.new(@user).repos
# itereation through
  end
end
