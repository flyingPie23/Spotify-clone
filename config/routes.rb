Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users do
    resources :followers
  end

  resources :followers, only: [:destroy]

  get "dashboard", to: "pages#dashboard", as: "dashboard"
  get "feed", to: "pages#feed", as: "feed"

  resources :songs

  resources :playlists do
    resources :items
    resources :songs
  end
end
