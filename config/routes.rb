Rails.application.routes.draw do
  resources :posts
  root to: 'pages#home'
  devise_for :views
  devise_for :admins
  devise_for :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'pets#index'
end
  # resources :posts, only: :create
  # resources :photos, only: :create
  # resources :clients, only: :show
