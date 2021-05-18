Rails.application.routes.draw do

  devise_for :users

  root to: "mainpages#index"

  resources :posts do
    collection do
      get 'search'
    end
  end

  resources :users, only: [:edit, :update, :show]

  resources :messages, only: [:create]

  resources :rooms, only: [:show, :create]

  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'

end
