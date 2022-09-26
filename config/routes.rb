Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      get '/forecast', to: 'landing#forecast'
      get '/book-search', to: 'books#results'
    end
  end
end