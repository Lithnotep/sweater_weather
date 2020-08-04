Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      root "/", to: "welcome#index"
      get "/forecast", to: 'forecast#index'
      get "/backgrounds", to: "background#index"

      post "/users", to: 'user#create'
      post "/sessions", to: 'sessions#create'
      post "/road_trip", to: 'road_trip#index'

    end
  end
end
