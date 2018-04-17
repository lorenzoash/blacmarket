Rails.application.routes.draw do
 root 'home#index'
 get '/items/new', to: 'items#new'
 post '/items', to: 'items#create'
 get 'items/:id', to: 'items#show', as: :item
 resources :items 
 resources :line_items
 resource :carts, only: [:show]
 resources :users, only: [:new, :create]
 resources :sessions, only: [:new, :create, :destroy]
 get '/login', to: 'sessions#new'
 get 'logout', to: 'sessions#destroy'
end
