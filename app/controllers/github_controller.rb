class GithubController < ApplicationController
  
  def index
    @pull_requests = GithubFacade.pull_requests
  end

end