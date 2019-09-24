Rails.application.routes.draw do
  root to: 'pages#home'
  # get 'posts' to 'pets#posts'
  devise_for :views
  devise_for :admins
  devise_for :clients
  resource :dashboard, only: [:show]
  
  resources :pets
    resources :posts, only: :create
    resources :photos, only: :create
    resources :charges, only: :create
  resources :clients, only: :show
  
end


  
  # resources :pets do
  #   resources :posts, only: :create
  #   resources :photos, only: :create
  #   resources :charges, only: :create
  # end
