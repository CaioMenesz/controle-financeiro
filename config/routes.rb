Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :personal_transactions, only: [:index]
  root "personal_transactions#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
