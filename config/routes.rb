Rails.application.routes.draw do
  get "/", to: "library#index"
end
