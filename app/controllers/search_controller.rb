class SearchController < ApplicationController
  def index
    state = params[:state]

    conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
      faraday.headers["X-API-Key"] =  'Tr2G6UlaWnD6VWqn8RExdtTjaKri8Xr3VZRChsPj'
    end

    response = conn.get("/congress/v1/members/house/CO/current.json")

    json = JSON.parse(response.body, symbolize_names: true)
    @members = json[:results]
  end
end