class GithubService

  def initialize(user)
    @token = user.token
  end

  def conn
   url = "https://api.github.com"
   Faraday.new(url: url) do |faraday|
     faraday.adapter Faraday.default_adapter
     faraday.headers["Authorization"] = "token #{@token}"
   end
  end

  def repos
    get_json('/user/repos')
  end

  def get_json(url)
    response = conn.get(url)
    results = JSON.parse(response.body, symbolize_names: true)
  end

end
