class UserFacade

  def initialize(user)
    @user = user
  end

  def repos
    binding.pry
    GithubService.new(@user).repos
# itereation through
# Why isn't api call working? is it being called. Is a test calling it?
# Do I need to create casettes?
# What does the api testing docs show?
# TDD? - probs start with TDD.
  end
end
