Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'places#index'
  resources :places do
    resources :comments, only: :create
    resources :photos, only: :create
  end
  
  resources :users, only: [:show, :update, :edit]
  resources :contacts, only: [:new, :create]
  
  end
    
