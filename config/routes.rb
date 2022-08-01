Rails.application.routes.draw do
  root to: "welcome#index"
  get "/search", to: "search#index"
  get "/github", to: "github#index"
end
