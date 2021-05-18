Rails.application.routes.draw do

  devise_for :users
  root to: "mainpages#index"
  resources :posts
  resources :users, only: [:edit, :update, :show]
  
end
