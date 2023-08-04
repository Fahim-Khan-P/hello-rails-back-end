Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    get '/', to: 'greetings#random'
    resources :greetings, only: [:random]
  end

  # Defines the root path route ("/")
  # root "articles#index"
  root 'root#index'
end