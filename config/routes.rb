Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'recipes/show'
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'categories#index'
  resources :categories, only: [:index, :show, :new, :create] do
    resources :recipes, only: [:show]
    resources :bookmarks, only: [:new, :create]
  end
end
