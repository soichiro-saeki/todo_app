Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/todos', to: 'todos#index'
  root to: 'todos#index'
  resources :todos

  namespace :api do
    resources :todos, only: [:index]
  end
end
