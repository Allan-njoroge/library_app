Rails.application.routes.draw do
  get "home/index"
  get "/", to: "home#index"
end
