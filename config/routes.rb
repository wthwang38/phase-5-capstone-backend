Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/leaderboard', to: "users#index"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
 
  post "/login", to: 'sessions#create'
  delete "/logout", to: "sessions#destroy"
  
  get '/accuracies', to: "accuracies#index"
  post "/stat", to: "accuracies#create"
  delete '/accuracies/:id', to: 'accuracies#destroy'
end
