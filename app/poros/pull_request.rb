class PullRequest
  attr_reader :state

  def initialize(attributes)
    @state = attributes["state"]
  end

end