Rails.application.routes.draw do

  devise_for :users
  root to: "mainpages#index"
  resources :posts
  resources :users, only: [:edit, :update, :show]
  resources :messages, only: [:create]
  resources :rooms, only: [:show, :create]

end
