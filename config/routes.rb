Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      get '/forecast', to: 'landing#forecast'
      post '/users', to: 'users#create'
      post '/sessions', to: 'sessions#login'
      post '/road_trip', to: 'roadtrips#create'
    end
  end
end