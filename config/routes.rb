Rails.application.routes.draw do
  root 'pets#index'
  resources :pets
  get 'about', to: 'pets#about'
  # get 'posts' to 'pets#posts'
  devise_for :views
  devise_for :admins
  devise_for :clients

    resource :dashboard, only: [:show]
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
