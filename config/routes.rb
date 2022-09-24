Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      get '/forecast', to: 'landing#index'
    end
  end
end