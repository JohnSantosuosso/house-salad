class GithubFacade

  def self.pull_requests
    conn = Faraday.new(url: "https://api.github.com")

    response = conn.get("https://api.github.com/repos/jusrez/little-esty-shop/pulls?state=closed")


    json = JSON.parse(response.body, symbolize_state: true)
      @pull_requests = json.map do |attributes|
        PullRequest.new(attributes)
      end
  end

end