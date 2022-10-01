Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "lists#index"
  resources :lists, only: %i[new create destroy] do
    resources :tasks, only: :show do
      resources :comments, only: :create
    end
  end
end
