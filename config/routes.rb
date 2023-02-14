Rails.application.routes.draw do
  root 'posts#index'
  
  resources :posts do
    resources :comments
    resources :upvotes, only: :create
    resources :downvotes, only: :create 
  end
  
  resources :users
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
  